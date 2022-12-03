kind: meson

sources:
- kind: tar
  url: gnome_downloads:tracker/3.4/tracker-3.4.0.rc.tar.xz
  ref: 24d2e1ed49f6d77bf50899a36542e86129933ef898e211b991619d35a8563381
build-depends:
- components/gobject-introspection.bst
- components/vala.bst
- components/pygobject.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/glib.bst
- components/json-glib.bst
- components/libsoup-2.4.bst
- components/libsoup.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dstemmer=disabled
