sources:
- kind: tar
  url: webkitgtk:webkitgtk-2.38.1.tar.xz
  ref: 02e195b3fb9e057743b3364ee7f1eec13f71614226849544c07c32a73b8f1848

build-depends:
- components/bubblewrap.bst
- components/gi-docgen.bst
- components/xdg-dbus-proxy.bst
- components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/ruby.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

runtime-depends:
- components/gst-libav.bst
- components/gst-plugins-bad.bst
- components/gst-plugins-good.bst

depends:
- components/at-spi2-core.bst
- components/enchant-2.bst
- components/geoclue.bst
- components/gst-plugins-base.bst
- components/libmanette.bst
- components/libnotify.bst
- components/libsecret.bst
- components/libwpe.bst
- components/pango.bst
- components/woff2.bst
- components/wpebackend-fdo.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/hyphen.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libtasn1.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xt.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  optimize-debug: 'false'
  (?):
  - arch == "i686" or arch == "arm":
      debug_flags: "-g1"

public:
  cpe:
    product: webkitgtk+
