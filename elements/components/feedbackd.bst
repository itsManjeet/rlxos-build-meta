kind: meson

sources:
- kind: tar
  url: purism:Librem5/feedbackd/-/archive/v0.0.0+git20210426/feedbackd-v0.0.0+git20210426.tar.bz2

  ref: 68ff48e650bf34775091c844f988ddd9ab206af32946825440d5d82a53f0a1b2
build-depends:
- components/gobject-introspection.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/gsound.bst
- components/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
