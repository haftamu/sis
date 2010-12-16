class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :id_number
      t.integer :batch_year

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
