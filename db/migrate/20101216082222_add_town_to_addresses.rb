class AddTownToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :town, :string
  end

  def self.down
    remove_column :addresses, :town
  end
end
