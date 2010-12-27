class CreateEducationalBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :educational_backgrounds do |t|
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :educational_backgrounds
  end
end
