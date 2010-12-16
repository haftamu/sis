class AddMaritalStatusToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :marital_status, :string
  end

  def self.down
    remove_column :students, :marital_status
  end
end
