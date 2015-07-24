override['vagrant']['version'] = '1.7.4'
override['vagrant']['url']         = vagrant_package_uri(node['vagrant']['version'])
override['vagrant']['checksum']    = vagrant_sha256sum(node['vagrant']['version'])
override['vagrant']['msi_version'] = ''
# virtualbox versions and stuff
case node['platform_family']
when 'mac_os_x'
  default['virtualbox']['url'] = 'http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-OSX.dmg'
when 'windows'
  default['virtualbox']['url'] = 'http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-Win.exe'
  default['virtualbox']['version'] = Vbox::Helpers.vbox_version(node['virtualbox']['url'])
when 'debian', 'rhel'
  default['virtualbox']['version'] = '5.0'
end

default['picnic-basket']['install-virtualbox'] = true
