kind: meson

sources:
- kind: tar
  url: gnome_downloads:gi-docgen/2022/gi-docgen-2022.1.tar.xz
  ref: fefe3153979595ddad2dc81d5efa7e54c8ca3770f91a5a75710c8fd6fad4575f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
- freedesktop-sdk.bst:components/python3-pygments.bst
- freedesktop-sdk.bst:components/python3-toml.bst
- components/python-typogrify.bst
