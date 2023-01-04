kind: filter

build-depends:
- sdk-deps/sysprof.bst

runtime-depends:
- components/glib.bst
- components/json-glib.bst
- freedesktop-sdk.bst:components/libunwind.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  include:
  - sysprof-agent
  include-orphans: false
