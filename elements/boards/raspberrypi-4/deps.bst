kind: stack

depends:
- system/common-deps.bst
- components/os-release.bst

- boards/raspberrypi-4/initramfs.bst
- boards/raspberrypi-4/bsp/firmware.bst
- boards/raspberrypi-4/bsp/rpi-userland.bst
