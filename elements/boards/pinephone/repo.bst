kind: ostree

build-depends:
- freedesktop-sdk.bst:vm/prepare-image.bst
- components/libostree.bst
- boards/pinephone/filesystem.bst
- boards/pinephone/initial-scripts.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  ostree-branch: rlxos/aarch64/pinephone

config:
  environment:
  - components/libostree.bst
  - system/prepare-image.bst
  - boards/pinephone/initial-scripts.bst
  ostree-branch: '%{ostree-branch}'
  initial-commands:
  - |
    prepare-image.sh \
       --sysroot %{sysroot} \
       --seed "%{uuidnamespace}" \
       --rootpasswd root \
       --rootsource LABEL=root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - mv %{sysroot}/etc %{sysroot}/usr/etc
