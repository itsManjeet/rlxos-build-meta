kind: meson

sources:
- kind: tar
  url: gnome_downloads:vte/0.70/vte-0.70.0.tar.xz
  ref: 93e0dd4a1bc2a7a1a62da64160a274cce456976ea1567d98591da96e2d265ae6
build-depends:
- components/gi-docgen.bst
- components/gobject-introspection.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/boost.bst
- components/glib.bst
- components/gtk+-3.bst
- components/gtk.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk4=true
    -Ddocs=true
    -Dglade=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
