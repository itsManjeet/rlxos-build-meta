kind: cmake
sources:
- kind: git_tag
  track: master
  url: github:itsManjeet/source.git

  ref: a9467d9ecf1863c0bda11727af786de4b21fd6e3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/curl.bst
- components/boost.bst

config:
  install-commands:
  - install -v -Dm0755 _builddir/libsource.so -t %{install-root}%{libdir}/
