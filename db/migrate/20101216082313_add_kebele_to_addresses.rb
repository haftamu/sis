class AddKebeleToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :kebele, :string
  end

  def self.down
    remove_column :addresses, :kebele
  end
end
