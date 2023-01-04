kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/43/devhelp-43.0.tar.xz
  ref: 63ceeefd05392e02044881ef1ecd724293553da5735b7efc082b2d13fe85dd04
build-depends:
- components/appstream-glib.bst
- components/gobject-introspection.bst
- components/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/gsettings-desktop-schemas.bst
- components/gtk+-3.bst
- components/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
