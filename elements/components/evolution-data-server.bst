kind: cmake

sources:
- kind: tar
  url: gnome_downloads:evolution-data-server/3.46/evolution-data-server-3.46.1.tar.xz
  ref: c55e72cff4190b42e63dd6eabc6dce48a1a1f79040531f1af6d51c1efa4aa6eb
build-depends:
- components/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/gnome-online-accounts.bst
- components/libcanberra.bst
- components/libgweather.bst
- components/openldap.bst
- components/gcr.bst
- components/gtk+-3.bst
- components/libsecret.bst
- components/libsoup.bst
- components/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libical.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DSYSCONF_INSTALL_DIR=%{sysconfdir}
    -DENABLE_INTROSPECTION=ON
    -DENABLE_VALA_BINDINGS=ON
    -DENABLE_UOA=OFF
    -DENABLE_GOOGLE_AUTH=OFF
    -DWITH_GWEATHER4=ON
    -DWITH_LIBDB=OFF
    -DENABLE_GOOGLE=OFF
    -DENABLE_OAUTH2_WEBKITGTK4=OFF
