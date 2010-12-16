class AddRegionToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :region, :string
  end

  def self.down
    remove_column :addresses, :region
  end
end
