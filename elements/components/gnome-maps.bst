kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/43/gnome-maps-43.1.tar.xz
  ref: 1f751a35bd589ad793f5b14135f293e4ec6d4b2c30733fec760c687d8f143126
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
runtime-depends:
- components/adwaita-icon-theme.bst
- components/glib-networking.bst
- components/librsvg.bst
depends:
- components/libshumate.bst
- components/libgweather.bst
- components/librest.bst
- components/geoclue.bst
- components/gjs.bst
- components/glib.bst
- components/gobject-introspection.bst
- components/gtk.bst
- components/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
