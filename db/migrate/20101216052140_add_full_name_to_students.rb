class AddFullNameToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :first_name, :string
    add_column :students, :middle_name, :string
    add_column :students, :last_name, :string
  end

  def self.down
    remove_column :students, :last_name
    remove_column :students, :middle_name
    remove_column :students, :first_name
  end
end
