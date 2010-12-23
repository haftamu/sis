class RemoveColumnType < ActiveRecord::Migration
  def self.up
    remove_column :transfers, :transfer_type
  end

  def self.down
    add_column :transfers, :transfer_type
  end
end
