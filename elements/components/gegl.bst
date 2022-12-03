kind: meson

sources:
- kind: tar
  url: gimp:gegl/0.4/gegl-0.4.38.tar.xz

  ref: e4a33c8430a5042fba8439b595348e71870f0d95fbf885ff553f9020c1bed750
build-depends:
- components/gobject-introspection.bst
- components/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/libraw.bst
- components/babl.bst
- components/gexiv2.bst
- components/graphviz.bst
- components/gdk-pixbuf.bst
- components/glib.bst
- components/json-glib.bst
- components/librsvg.bst
- components/pango.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:components/sdl2.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Djasper=disabled
    -Dlensfun=disabled
    -Dlibav=disabled
    -Dlibspiro=disabled
    -Dlibv4l=disabled
    -Dlibv4l2=disabled
    -Dlua=disabled
    -Dmaxflow=disabled
    -Dmrg=disabled
    -Dopenexr=disabled
    -Dpygobject=disabled
    -Dumfpack=disabled
