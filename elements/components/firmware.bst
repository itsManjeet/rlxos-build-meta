kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- components/sof-firmware.bst
build-depends:
- freedesktop-sdk.bst:components/python3.bst

config:
  install-commands:
  - make DESTDIR="%{install-root}" FIRMWAREDIR="%{indep-libdir}/firmware" installcompress

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/firmware/linux-firmware.git
  track: main
  ref: 20221012-17-g0cac82d36af9f9b1d3e532dccf0c690408ccb454
- kind: patch
  path: files/firmware/compress.patch
