class AddPlaceOfBirthToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :place_of_birth, :string
  end

  def self.down
    remove_column :students, :place_of_birth
  end
end
