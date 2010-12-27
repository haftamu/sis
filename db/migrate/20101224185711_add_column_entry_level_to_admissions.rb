class AddColumnEntryLevelToAdmissions < ActiveRecord::Migration
  def self.up
    add_column :admissions, :entry_level, :string
  end

  def self.down
    remove_column :admissions, :entry_level
  end
end
