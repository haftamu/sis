class CreateFinancialSupports < ActiveRecord::Migration
  def self.up
    create_table :financial_supports do |t|
      t.string :support_type
      t.string :Name
      t.string :address
      t.string :financial_attachment
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :financial_supports
  end
end
