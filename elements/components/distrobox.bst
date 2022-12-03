kind: manual

sources:
- kind: tar
  url: https://github.com/89luca89/distrobox/archive/refs/tags/1.4.1.tar.gz

  ref: be3266f77011b30da5d0035e246d4e4a9360b7c90fbd8b90ac581165a00217b8
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- freedesktop-sdk.bst:components/podman.bst

config:
  install-commands:
  - ./install -P %{install-root}/usr
