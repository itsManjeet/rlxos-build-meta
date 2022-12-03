kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtk/4.8/gtk-4.8.2.tar.xz
  ref: 85b7a160b6e02eafa4e7d38f046f8720fab537d3fe73c01c864333a983a692a9
build-depends:
- components/gi-docgen.bst
- components/sassc.bst
- components/gobject-introspection.bst
- components/pygobject.bst
- components/sysprof-minimal.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/at-spi2-core.bst
- components/gdk-pixbuf.bst
- components/glib.bst
- components/graphene.bst
- components/gst-plugins-bad.bst
- components/gst-plugins-base.bst
- components/pango.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbroadway-backend=true
    -Dgtk_doc=true
    -Dmedia-ffmpeg=disabled
    -Dvulkan=disabled
    -Dsysprof=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gtk4-demo'
        - '%{bindir}/gtk4-demo'
        - '%{bindir}/gtk4-demo-application'
        - '%{bindir}/gtk4-node-editor'
        - '%{bindir}/gtk4-print-editor'
        - '%{bindir}/gtk4-widget-factory'
        - '%{datadir}/applications/org.gtk.Demo4.desktop'
        - '%{datadir}/applications/org.gtk.IconBrowser4.desktop'
        - '%{datadir}/applications/org.gtk.PrintEditor4.desktop'
        - '%{datadir}/applications/org.gtk.WidgetFactory4.desktop'
        - '%{datadir}/applications/org.gtk.gtk4.NodeEditor.desktop'
        - '%{datadir}/metainfo/org.gtk.Demo4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.IconBrowser4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.PrintEditor4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.WidgetFactory4.appdata.xml'
        - '%{datadir}/metainfo/org.gtk.gtk4.NodeEditor.appdata.xml'
        - '%{libdir}/libgtk-4.so'
