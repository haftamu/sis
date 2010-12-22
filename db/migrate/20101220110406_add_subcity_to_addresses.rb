class AddSubcityToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :subcity, :string
  end

  def self.down
    remove_column :addresses, :subcity
  end
end
