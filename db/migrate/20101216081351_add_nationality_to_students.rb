class AddNationalityToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :nationality, :string
  end

  def self.down
    remove_column :students, :nationality
  end
end
