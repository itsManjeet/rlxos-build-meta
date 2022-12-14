kind: script

build-depends:
- boards/pinephone-pro/image-deps.bst
- boards/pinephone-pro/repo.bst
- boards/pinephone-pro/linux.bst

variables:
  linux-root: B921B045-1DF0-41C3-AF44-4C6F280D3FAE
  ostree-branch: rlxos/aarch64/pinephone-pro
  board: pinephone-pro-rk3399

  sysroot: "/sysroot"

environment:
  OSTREE_REPO: "%{sysroot}/ostree/repo"
  XZFLAGS: -T%{max-jobs}

environment-nocache:
- XZFLAGS


config:
  layout:
  - element: ''
    destination: '/sysroot'
  - element: ''
    destination: '/genimage'
  - element: boards/pinephone-pro/repo.bst
    destination: '/source-repo'
  - element: boards/pinephone-pro/image-deps.bst
    destination: '/'
  - element: boards/pinephone-pro/linux.bst
    destination: '/kernel'

  commands:
  - mkdir -p "${OSTREE_REPO}"
  - ostree init --repo="${OSTREE_REPO}" --mode=bare

  - ostree config --group sysroot set bootloader auto
  - ostree pull-local "/source-repo" %{ostree-branch}

  - mkdir -p "%{sysroot}/boot"

  - ostree admin init-fs "%{sysroot}"
  - ostree admin os-init --sysroot="%{sysroot}" rlxos

  # U-Boot does not provide EFI variables at runtime. So /dev/gpt-auto-root
  # is not available.
  - |
    ostree admin deploy --os="rlxos" \
         --sysroot="%{sysroot}" %{ostree-branch} \
         --karg="rw" --karg="splash" \
         --karg="root=LABEL=root" \
         --karg="console=ttyS0,115200n8" \
         --karg="earlycon=ttyS0,115200n8" 

  - |
    mkdir -p "%{sysroot}/etc/ostree"
    cp -r "%{sysroot}"/ostree/boot.1/rlxos/*/*/etc/ostree/remotes.d "%{sysroot}/etc/ostree/remotes.d"

  - |
    ostree admin set-origin --sysroot="%{sysroot}" \
           --index=0 \
           rlxos dummy \
           %{ostree-branch}

  - cp -r "%{sysroot}"/ostree/boot.1/rlxos/*/*/boot/EFI/ "%{sysroot}/boot/"

  - cp -r "/kernel/boot/dtbs" "%{sysroot}/boot/dtb"

  - |
    size=$(($(du -s -B 4K "%{sysroot}" | cut -f1)*4+200*1024))
    cat >/genimage/genimage.cfg <<EOF
    image efi.img {
        vfat {
            extraargs = "-F32 -n EFI"
        }
        mountpoint = "/boot"
        size = 500M
    }
    image root.img {
        ext4  {
            label = "root"
            use-mke2fs = true
        }
        size = ${size}K
    }
    image disk.img {
        hdimage {
            partition-table-type = "gpt"
            gpt-location = 1M
        }
        partition idbloader {
            image = "idbloader.img"
            offset = 32K
            in-partition-table = false
        }
        partition uboot {
            image = "u-boot.itb"
            offset = 8M
            in-partition-table = false
        }
        partition efi {
            image = "efi.img"
            partition-type-uuid = "U"
        }
        partition root {
            image = "root.img"
            partition-type-uuid = "%{linux-root}"
        }
    }
    EOF

  - | 
    cd /genimage
    genimage --rootpath "%{sysroot}" --inputpath "%{indep-libdir}/u-boot/%{board}"
    sfdisk --part-attrs /genimage/images/disk.img 2 55
    mv /genimage/images/disk.img %{install-root}/disk.img
    xz ${XZFLAGS} %{install-root}/disk.img
