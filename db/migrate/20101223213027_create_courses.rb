class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :title
      t.string :code
      t.float :credit_hour
      t.text :description
      t.integer :department_id

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
