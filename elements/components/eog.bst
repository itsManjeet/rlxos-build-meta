kind: meson

sources:
- kind: tar
  url: gnome_downloads:eog/43/eog-43.1.tar.xz
  ref: fed79ff3ca19bac62f27155c9bdd69eef875870b971e6dcb0aa38c093d131971
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/exempi.bst
- components/libpeas.bst
- components/libportal.bst
- components/gnome-desktop.bst
- components/adwaita-icon-theme.bst
- components/gdk-pixbuf.bst
- components/glib.bst
- components/gobject-introspection.bst
- components/gsettings-desktop-schemas.bst
- components/gtk+-3.bst
- components/libhandy.bst
- components/librsvg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- components/webp-pixbuf-loader.bst
