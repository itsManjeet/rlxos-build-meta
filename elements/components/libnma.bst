kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnma/1.10/libnma-1.10.2.tar.xz
  ref: 4fc3d9c404b7b13303d9394f96961c5298d71afa9f1fa7af5e4f0f6e842a0940
build-depends:
- components/gobject-introspection.bst
- components/gtk-doc.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/networkmanager.bst
- components/mobile-broadband-provider-info.bst
- components/adwaita-icon-theme.bst
- components/gcr-3.bst
- components/glib.bst
- components/gtk+-3.bst
- components/gtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibnma_gtk4=true
