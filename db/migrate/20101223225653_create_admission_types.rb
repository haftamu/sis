class CreateAdmissionTypes < ActiveRecord::Migration
  def self.up
    create_table :admission_types do |t|
      t.integer :enrollment_type_id
      t.integer :program_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :admission_types
  end
end
