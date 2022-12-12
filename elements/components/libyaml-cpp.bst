kind: cmake

sources:
- kind: git_tag
  track: yaml-cpp-0.6.3
  url: github:jbeder/yaml-cpp.git

  ref: yaml-cpp-0.6.3-0-g9a3624205e8774953ef18f57067b3426c1c5ada6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DCMAKE_INSTALL_SYSCONFDIR=%{sysconfdir}
    -DYAML_BUILD_SHARED_LIBS=ON
    -DYAML_CPP_BUILD_TESTS=OFF
    -DYAML_CPP_BUILD_TOOLS=OFF