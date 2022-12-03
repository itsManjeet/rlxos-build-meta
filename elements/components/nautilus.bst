kind: meson

sources:
- kind: tar
  url: gnome_downloads:nautilus/43/nautilus-43.0.tar.xz
  ref: 3cf54fac0a8abee090e155417f7b16f63ea0ac0c264ef4f54574af345801a911
build-depends:
- components/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- components/tracker-miners.bst
- components/adwaita-icon-theme.bst

depends:
- components/gexiv2.bst
- components/gnome-autoar.bst
- components/libcloudproviders.bst
- components/libportal.bst
- components/gnome-desktop.bst
- components/glib.bst
- components/gsettings-desktop-schemas.bst
- components/gtk.bst
- components/libadwaita.bst
- components/pango.bst
- components/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dselinux=false
