class AddWeredaToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :wereda, :string
  end

  def self.down
    remove_column :addresses, :wereda
  end
end
