kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-tweaks.git
  track: master

  ref: 42.beta-24-g43f547a8b6ec171806cfdf94edacb47853a1bb63
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- components/gnome-shell.bst
- components/nautilus.bst
- components/librsvg.bst
- components/pygobject.bst

depends:
- components/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst