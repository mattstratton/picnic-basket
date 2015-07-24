default['vagrant']['version'] = '1.7.4'
# case node['platform_family']
# when 'windows'
#   default['vagrant']['url'] = 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4.msi'
#   node['vagrant']['msi_version'] = ''
# when 'rhel', 'fedora'
#   default['vagrant']['url'] = 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.rpm'
# when 'debian'
#   default['vagrant']['url'] = 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb'
# when 'mac_os_x'
#   default['vagrant']['url'] = 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4.dmg'
# end
default['vagrant']['msi_version'] = ''
