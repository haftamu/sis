class CreateFamilyBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :family_backgrounds do |t|
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :family_backgrounds
  end
end
