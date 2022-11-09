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
    parted --script ${OSI_DEVICE_PATH}  \
        mklabel gpt                     \
        mkpart primary 1MiB 500MiB      \
        set 1 esp on                    \
        mkpart primary 500MiB 100%
    OSI_DEVICE_EFI_PARTITION=$(lsblk ${OSI_DEVICE_PATH} -no path | sed '2!d')

    echo "EFI PARTITION: ${OSI_DEVICE_EFI_PARTITION}"
    mkfs.fat -f -F32 ${OSI_DEVICE_EFI_PARTITION}

    OSI_DEVICE_PATH=$(lsblk ${OSI_DEVICE_PATH} -no path | sed '3!d')
    echo "DEVICE PATH: ${OSI_DEVICE_PATH}"
fi

echo "FORMATTING ${OSI_DEVICE_PATH}"
mkfs.btrfs -f ${OSI_DEVICE_PATH} || {
    echo "Failed to format ${OSI_DEVICE_PATH}"
    exit 1
}

echo "MOUNTING ${OSI_DEVICE_PATH} /mnt"
mount ${OSI_DEVICE_PATH} /mnt/ || {
    echo "Failed to mount ${OSI_DEVICE_PATH}"
    exit 1
}


mkdir -p /mnt/boot
mount ${OSI_DEVICE_EFI_PARTITION} /mnt/boot/ || {
    umount ${OSI_DEVICE_PATH}

    echo "Failed to mount ${OSI_DEVICE_EFI_PARTITION} /mnt/boot"
    exit 1
}

OSTREE_BRANCH="rlxos/devel/x86_64-user"
SYSROOT="/mnt"
OSTREE_REPO="${SYSROOT}/ostree/repo"

mkdir -p ${OSTREE_REPO}
ostree init --repo=${OSTREE_REPO} --mode=bare

ostree pull-local "/run/mount/squash" ${OSTREE_BRANCH}

ostree admin init-fs ${SYSROOT}
ostree admin os-init --sysroot=${SYSROOT} rlxos

ostree admin deploy --os="rlxos" \
    --sysroot=${SYSROOT} ${OSTREE_BRANCH} \
    --karg="rw" --karg="quiet" --karg="splash" \
    --karg="console=tty0"

ostree admin set-origin --sysroot="${SYSROOT}" \
    --index=0 \
    rlxos "https://ostree.rlxos.dev/" ${OSTREE_BRANCH}

ostree remote delete rlxos
cp -r "${SYSROOT}"/ostree/boot.1/rlxos/*/*/boot/EFI/ "${SYSROOT}/boot/"

exit 0