kind: meson

sources:
- kind: tar
  url: freedesktop_people:~hughsient/appstream-glib/releases/appstream-glib-0.8.1.tar.xz

  ref: 68a3d007f5b3aa84592dbef07950d9acf327da97ec8a6e88a90575d9055ddf6d
build-depends:
- components/gobject-introspection.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/gcab.bst
- components/gdk-pixbuf.bst
- components/glib.bst
- components/json-glib.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dstemmer=false
    -Drpm=false
    -Dfonts=false
    -Ddep11=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream-glib.so'
