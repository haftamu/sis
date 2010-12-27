class CreateRelevantPublications < ActiveRecord::Migration
  def self.up
    create_table :relevant_publications do |t|
      t.string :description
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :relevant_publications
  end
end
