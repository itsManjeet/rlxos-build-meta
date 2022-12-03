kind: meson

sources:
- kind: tar
  url: gnome_downloads:evince/43/evince-43.0.tar.xz
  ref: 66be0de4b47b1130486103988cc152c04aea95950ba3ef16dc20c2ef6b681d47
build-depends:
- components/appstream-glib.bst
- components/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/gspell.bst
- components/libgxps.bst
- components/nautilus.bst
- components/adwaita-icon-theme.bst
- components/glib.bst
- components/gtk+-3.bst
- components/libhandy.bst
- components/libsecret.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcomics=disabled
    -Ddjvu=disabled
    -Ddvi=disabled
    -Dintrospection=true
    -Dgtk_doc=false
    -Dnautilus=false
