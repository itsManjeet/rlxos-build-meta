kind: cmake
sources:
- kind: git_tag
  track: master
  url: github:itsManjeet/srclang.git

  ref: 2c99419394393734b6a63817998aa5a84d926b5e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/curl.bst
- components/boost.bst

