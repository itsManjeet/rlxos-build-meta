kind: stack

depends:
- boards/pinephone/u-boot.bst
- components/libostree.bst
- freedesktop-sdk.bst:components/genimage.bst
- freedesktop-sdk.bst:integration/mtab.bst
