class AddBirthDateToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :birth_date, :date
  end

  def self.down
    remove_column :students, :birth_date
  end
end
