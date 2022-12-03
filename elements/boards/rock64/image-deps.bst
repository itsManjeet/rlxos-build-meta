kind: stack

depends:
- boards/rock64/u-boot.bst
- components/libostree.bst
- components/qemu.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
