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
  ref: 20221109-4-g391fb47caabaae8719fb72ba4891d1fc27ca1923
- kind: patch
  path: files/firmware/compress.patch
