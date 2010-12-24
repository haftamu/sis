class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :father_name
      t.string :grand_father_name
      t.string :sex
      t.date :birth_date
      t.string :mother_full_name
      t.string :nationality
      t.string :ethnic_group
      t.string :mother_tounge

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
