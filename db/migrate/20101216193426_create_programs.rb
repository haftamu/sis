class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.integer :enrolment_type_id
      t.integer :program_type_id
      t.string :attendance

      t.timestamps
    end
  end

  def self.down
    drop_table :programs
  end
end
