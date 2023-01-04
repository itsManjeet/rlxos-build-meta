kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/43/gnome-builder-43.2.tar.xz
  ref: 77322117a111b2747bcce8ad60578a679c2021e486911cf6f4e63416328abb33
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- components/flatpak-builder.bst
- components/adwaita-icon-theme.bst
- components/gjs.bst
- components/pygobject.bst
- components/vala.bst

depends:
- components/cmark.bst
- components/editorconfig-core-c.bst
- components/flatpak.bst
- components/jsonrpc-glib.bst
- components/libgit2-glib.bst
- components/libpanel.bst
- components/libpeas.bst
- components/libportal.bst
- components/template-glib.bst
- components/vte.bst
- components/d-spy.bst
- components/gvfs-daemon.bst
- components/sysprof-app.bst
- components/glib.bst
- components/gtk.bst
- components/gtksourceview.bst
- components/libadwaita.bst
- components/librsvg.bst
- components/libsoup.bst
- components/webkit2gtk-5.0.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
