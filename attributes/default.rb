override['vagrant']['version'] = '1.7.4'
override['vagrant']['url']         = vagrant_package_uri(node['vagrant']['version'])
override['vagrant']['checksum']    = vagrant_sha256sum(node['vagrant']['version'])
override['vagrant']['msi_version'] = ''
