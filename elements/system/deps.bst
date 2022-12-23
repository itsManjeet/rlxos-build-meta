kind: stack

depends:
- groups/gnome.bst
- groups/extra.bst
- system/initramfs.bst
(?):
  - variant == "devel":
      depends:
        (>):
        - groups/devel.bst 