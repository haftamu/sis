class AddColumnToTransfer < ActiveRecord::Migration
  def self.up
    add_column :transfers, :student_id, :string
  end

  def self.down
    remove_column :transfers, :student_id
  end
end

