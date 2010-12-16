class CreateEnrolmentTypes < ActiveRecord::Migration
  def self.up
    create_table :enrolment_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :enrolment_types
  end
end
