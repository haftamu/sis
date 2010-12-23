class AddColumnType < ActiveRecord::Migration
  def self.up
    add_column :transfers, :transfer_type, :string
  end

  def self.down
    remove_column :transfers, :transfer_type
  end
end
