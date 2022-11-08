kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- freedesktop-sdk.bst:components/shadow.bst

config:
  install-commands:
  - install -Dm644 -t "%{install-root}/etc/default" useradd

sources:
- kind: local
  path: files/config/useradd
