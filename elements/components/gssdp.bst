kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.6/gssdp-1.6.0.tar.xz
  ref: 148ed41628c8f17336a2c8fa4b14ab0fbae98b6026be2dacfddea7bf43866689
build-depends:
- components/gi-docgen.bst
- components/gobject-introspection.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/glib.bst
- components/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsniffer=false
