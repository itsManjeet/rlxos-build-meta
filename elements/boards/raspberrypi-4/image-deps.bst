kind: stack

depends:
- boards/raspberrypi-4/bsp/rpi-efi-boot-script.bst
- boards/raspberrypi-4/bsp/u-boot.bst
- components/libostree.bst
- components/qemu.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
