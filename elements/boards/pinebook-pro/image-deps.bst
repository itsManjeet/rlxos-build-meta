kind: stack

depends:
- boards/pinebook-pro/u-boot.bst
- components/libostree.bst
- components/qemu.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
