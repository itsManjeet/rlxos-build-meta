kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/43/gnome-text-editor-43.1.tar.xz
  ref: 973a4b0deb68f9f91a54a4dd415b6afde9b5ae3ee684bc761471f94290f9f6cb
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/editorconfig-core-c.bst
- components/adwaita-icon-theme.bst
- components/enchant-2.bst
- components/gtksourceview.bst
- components/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
