class CreateHigerEducationBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :higer_education_backgrounds do |t|
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :higer_education_backgrounds
  end
end
