class CreateSemesters < ActiveRecord::Migration
  def self.up
    create_table :semesters do |t|
      t.string :name
      t.integer :academic_calendar_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :semesters
  end
end
