class AddIpAddressToMachines < ActiveRecord::Migration
  def change
    add_column :machines, :ipaddress, :string
  end
end
