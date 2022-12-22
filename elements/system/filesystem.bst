kind: compose

build-depends:
- system/deps.bst
- system/initramfs.bst
- system/manifest.bst

config:
  exclude:
    - source
  (?):
  - variant == "user":
      exclude:
        (>):
        - devel
        - debug
        - doc