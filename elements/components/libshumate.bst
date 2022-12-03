kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.0/libshumate-1.0.2.tar.xz
  ref: fe336b9a26b58e2972e1863f703ad88343143920ffca2d58f134ce341aed988d
build-depends:
- components/gi-docgen.bst
- components/gobject-introspection.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/glib.bst
- components/gtk.bst
- components/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibsoup3=true
