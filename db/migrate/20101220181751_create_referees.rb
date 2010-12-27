class CreateReferees < ActiveRecord::Migration
  def self.up
    create_table :referees do |t|
      t.string :name
      t.string :address
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :referees
  end
end
