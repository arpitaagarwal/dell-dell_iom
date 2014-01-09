# Add or delete a VLAN

# Add VLAN 180
mxl_vlan { '180':
  desc   => 'test',
  vlan_name=>'test name',
  ensure => present;
}

# Delete VLAN 180
mxl_vlan { '180':
  desc   => 'test',
  vlan_name=>'test name',
  ensure => absent;
}

