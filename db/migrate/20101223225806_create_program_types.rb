class CreateProgramTypes < ActiveRecord::Migration
  def self.up
    create_table :program_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :program_types
  end
end
