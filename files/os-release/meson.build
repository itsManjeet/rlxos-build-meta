project('rlxos-release')

branch_name = get_option('branch')
conf_data = configuration_data({
  'SDK_BRANCH': branch_name
})

conf_data.set('ISSUE_NAME', 'RLXOS')
conf_data.set('VARIANT_ID', get_option('variant'))
if get_option('variant') == 'devel'
  conf_data.set('VARIANT', 'Development')
  conf_data.set('FULL_NAME', 'RLXOS Development')
elif get_option('variant') == 'user'
  conf_data.set('VARIANT', 'User')
  conf_data.set('FULL_NAME', 'RLXOS')
endif

configure_file(
    input : 'os-release.in',
    output : 'os-release',
    configuration : conf_data,
    install_dir : get_option('prefix') / 'lib'
)

configure_file(
   input : 'issue.net.in',
    output : 'issue.net',
    configuration : conf_data,
    install_dir : get_option('sysconfdir')
)

configure_file(
   input : 'issue.in',
    output : 'issue',
    configuration : conf_data,
    install_dir : get_option('sysconfdir')
)

meson.add_install_script('os-release-symlink.sh', get_option('sysconfdir'))
