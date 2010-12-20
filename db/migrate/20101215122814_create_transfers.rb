class CreateTransfers < ActiveRecord::Migration
  def self.up
    create_table :transfers do |t|
      t.string :transfered_university_name

      t.timestamps
    end
  end

  def self.down
    drop_table :transfers
  end
end
