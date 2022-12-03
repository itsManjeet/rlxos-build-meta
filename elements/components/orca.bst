kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/43/orca-43.0.tar.xz
  ref: 1ca75a00c4a8512a09e4a26eb339fad7944d1ed41aca32f70f69627244218250
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- components/pyatspi.bst
- components/speech-dispatcher.bst
- components/at-spi2-core.bst
- components/gobject-introspection.bst
- components/gtk+-3.bst
- components/pygobject.bst
- components/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
