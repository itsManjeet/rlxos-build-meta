kind: meson

sources:
- kind: tar
  url: gnome_downloads:cheese/43/cheese-43.alpha.tar.xz
  ref: badae9f7bda6fa5721dab7a08b8237a75e5325c0c9a669498ff54f772146e4cf
build-depends:
- components/appstream-glib.bst
- components/gobject-introspection.bst
- components/gtk-doc.bst
- components/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- components/clutter-gst.bst
- components/clutter-gtk.bst
- components/gnome-video-effects.bst
- components/libcanberra.bst
- components/gnome-desktop.bst
- components/adwaita-icon-theme.bst
- components/glib.bst
- components/gst-plugins-bad.bst
- components/gst-plugins-base.bst
- components/gst-plugins-good.bst
- components/gtk+-3.bst
- components/librsvg.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
