class AddColumn1Transfer < ActiveRecord::Migration
  def self.up
    remove_column :transfers, :transfertype
  end

  def self.down
  end
end
