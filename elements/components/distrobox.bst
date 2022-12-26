kind: manual

sources:
- kind: git_tag
  url: github:89luca89/distrobox
  track: main
  ref: 1.4.2.1-1-g0e24aae53ae6e2fd6901db3556de9e6b261e7a6f
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- components/podman.bst

config:
  install-commands:
  - ./install -P %{install-root}/usr
