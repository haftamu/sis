class AddColumnTransfer < ActiveRecord::Migration
  def self.up
    add_column :transfers, :transfertype, :string
    
    add_column :transfers, :transfered_faculty_name, :string
    add_column :transfers, :transfered_department_name, :string
    add_column :transfers, :transfered_program, :string 
    add_column :transfers, :transfered_enrollment, :string
    add_column :transfers, :effective_as_of_semester, :integer
    add_column :transfers, :effective_as_of_ac_year, :integer
    add_column :transfers, :transfer_reason, :text
    add_column :transfers, :application_date, :datetime
  end

  def self.down
  end
end
