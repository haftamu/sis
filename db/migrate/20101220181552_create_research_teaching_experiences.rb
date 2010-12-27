class CreateResearchTeachingExperiences < ActiveRecord::Migration
  def self.up
    create_table :research_teaching_experiences do |t|
      t.string :description
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :research_teaching_experiences
  end
end
