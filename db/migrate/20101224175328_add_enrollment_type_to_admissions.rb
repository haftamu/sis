class AddEnrollmentTypeToAdmissions < ActiveRecord::Migration
  def self.up
    add_column :admissions, :enrollment_type_id, :integer
  end

  def self.down
    remove_column :admissions, :enrollment_type_id
  end
end
