require 'puppet/provider/dell_ftos'

Puppet::Type.type(:ioa_interface).provide :dell_ftos, :parent => Puppet::Provider::Dell_ftos do
  desc "IOA Switch Interface Provider for Device Configuration."
  mk_resource_methods
  def initialize(device, *args)
    super
  end

  def self.lookup(device, name)
    device.switch.interface(name).params_to_hash
  end

  def flush
    device.switch.interface(name).update(former_properties, properties)
    super
  end
end
