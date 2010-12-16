class AddSexToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :sex, :string
  end

  def self.down
    remove_column :students, :sex
  end
end
