kind: stack

depends:
- variant/user.bst
- system/initramfs.bst
(?):
  - variant == "devel":
      depends:
        (>):
        - variant/devel.bst 