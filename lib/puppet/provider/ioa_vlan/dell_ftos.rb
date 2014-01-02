#Provide for IOA 'VLAN' Type

require 'puppet/provider/dell_ftos'

Puppet::Type.type(:ioa_vlan).provide :dell_ftos, :parent => Puppet::Provider::Dell_ftos do

  desc "Dell IOA switch provider for VLAN configuration."

  mk_resource_methods
  def initialize(device, *args)
    super
  end

  def self.lookup(device, name)
    device.switch.vlan(name).params_to_hash
  end

  def flush
    device.switch.vlan(name).update(former_properties, properties)
    super
  end
end
