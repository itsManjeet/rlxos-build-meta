#! /bin/sh

# This is an example installer script. For OS-Installer to use it, place it at:
# /etc/os-installer/scripts/install.sh
# The script gets called with the following environment variables set:
# OSI_LOCALE              : Locale to be used in the new system
# OSI_DEVICE_PATH         : Device path at which to install
# OSI_DEVICE_IS_PARTITION : 1 if the specified device is a partition (0 -> disk)
# OSI_DEVICE_EFI_PARTITION: Set if device is partition and system uses EFI boot.
# OSI_USE_ENCRYPTION      : 1 if the installation is to be encrypted
# OSI_ENCRYPTION_PIN      : The encryption pin to use (if encryption is set)

# sanity check that all variables were set
if [ -z ${OSI_LOCALE+x} ] || \
   [ -z ${OSI_DEVICE_PATH+x} ] || \
   [ -z ${OSI_DEVICE_IS_PARTITION+x} ] || \
   [ -z ${OSI_DEVICE_EFI_PARTITION+x} ] || \
   [ -z ${OSI_USE_ENCRYPTION+x} ] || \
   [ -z ${OSI_ENCRYPTION_PIN+x} ]
then
    echo "Installer script called without all environment variables set!"
    exit 1
fi

echo 'Installation started.'
echo ''
echo 'Variables set to:'
echo 'OSI_LOCALE               ' $OSI_LOCALE
echo 'OSI_DEVICE_PATH          ' $OSI_DEVICE_PATH
echo 'OSI_DEVICE_IS_PARTITION  ' $OSI_DEVICE_IS_PARTITION
echo 'OSI_DEVICE_EFI_PARTITION ' $OSI_DEVICE_EFI_PARTITION
echo 'OSI_USE_ENCRYPTION       ' $OSI_USE_ENCRYPTION
echo 'OSI_ENCRYPTION_PIN       ' $OSI_ENCRYPTION_PIN
echo ''

if [ "${OSI_DEVICE_IS_PARTITION}" -ne "1" ] ; then
    sudo parted --script ${OSI_DEVICE_PATH}  \
        mklabel gpt                     \
        mkpart primary 1MiB 500MiB      \
        set 1 esp on                    \
        mkpart primary 500MiB 100% || {
            echo "Failed to partition ${OSI_DEVICE_PATH}"
            exit 1
        }
    OSI_DEVICE_EFI_PARTITION=$(lsblk ${OSI_DEVICE_PATH} -no path | sed '2!d')

    echo "EFI PARTITION: ${OSI_DEVICE_EFI_PARTITION}"
    sudo mkfs.fat -F32 ${OSI_DEVICE_EFI_PARTITION} || {
        echo "Failed to format ${OSI_DEVICE_PATH}"
        exit 1
    }

    OSI_DEVICE_PATH=$(lsblk ${OSI_DEVICE_PATH} -no path | sed '3!d')
    echo "DEVICE PATH: ${OSI_DEVICE_PATH}"
fi

OSTREE_BRANCH="rlxos/devel/x86_64-user"
SYSROOT="/sysroot"
OSTREE_REPO="${SYSROOT}/ostree/repo"

mkdir -p ${OSTREE_REPO}
echo "FORMATTING ${OSI_DEVICE_PATH}"
sudo mkfs.btrfs -f ${OSI_DEVICE_PATH} || {
    echo "Failed to format ${OSI_DEVICE_PATH}"
    exit 1
}

echo "MOUNTING ${OSI_DEVICE_PATH} ${SYSROOT}"
sudo mount ${OSI_DEVICE_PATH} ${SYSROOT} || {
    echo "Failed to mount ${OSI_DEVICE_PATH}"
    exit 1
}


sudo mkdir -p ${SYSROOT}/boot
sudo mount ${OSI_DEVICE_EFI_PARTITION} ${SYSROOT}/boot/ || {
    sudo umount ${OSI_DEVICE_PATH}

    echo "Failed to mount ${OSI_DEVICE_EFI_PARTITION} ${SYSROOT}/boot"
    exit 1
}

sudo mkdir -p ${OSTREE_REPO}
sudo ostree init --repo=${OSTREE_REPO} --mode=bare

sudo ostree pull-local "/run/mount/squash/ostree/repo" ${OSTREE_BRANCH}

sudo ostree admin init-fs ${SYSROOT}
sudo ostree admin os-init --sysroot=${SYSROOT} rlxos

sudo ostree admin deploy --os="rlxos" \
    --sysroot=${SYSROOT} ${OSTREE_BRANCH} \
    --karg="rw" --karg="quiet" --karg="splash" \
    --karg="console=tty0"

sudo ostree admin set-origin --sysroot="${SYSROOT}" \
    --index=0 \
    rlxos "https://ostree.rlxos.dev/" ${OSTREE_BRANCH}

sudo ostree remote delete rlxos
sudo cp -r "${SYSROOT}"/ostree/boot.1/rlxos/*/*/boot/EFI/ "${SYSROOT}/boot/"

exit 0