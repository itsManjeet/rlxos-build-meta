kind: manual

sources:
- kind: local
  path: files/config/nsswitch.conf

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - mkdir -p "%{install-root}%{sysconfdir}"
  - install nsswitch.conf "%{install-root}%{sysconfdir}"
