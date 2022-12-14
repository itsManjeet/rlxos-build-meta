kind: script

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- components/libostree.bst
- boards/raspberrypi-4/initial-scripts.bst
- boards/raspberrypi-4/filesystem.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-branch: rlxos/aarch64/raspberrypi-4

environment:
  OSTREE_REPO: "%{install-root}"

config:
  layout:
  - element: ''
    destination: /tmp
  - element: components/libostree.bst
    destination: /
  - element: boards/raspberrypi-4/filesystem.bst
    destination: /sysroot
  - element: boards/raspberrypi-4/initial-scripts.bst
    destination: /
  - element: vm/prepare-image.bst
    destination: /

  commands:
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL=root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - mkdir -p "${OSTREE_REPO}"
  - ostree init --repo="${OSTREE_REPO}" --mode=archive
  - mv /sysroot/etc /sysroot/usr/etc
  - ostree commit --branch=%{ostree-branch} --timestamp="$(date --date="@${SOURCE_DATE_EPOCH}" --rfc-3339=seconds)" /sysroot

