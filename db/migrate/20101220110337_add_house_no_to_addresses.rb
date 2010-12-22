class AddHouseNoToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :house_no, :string
  end

  def self.down
    remove_column :addresses, :house_no
  end
end
