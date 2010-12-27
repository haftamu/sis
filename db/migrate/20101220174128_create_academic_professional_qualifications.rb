class CreateAcademicProfessionalQualifications < ActiveRecord::Migration
  def self.up
    create_table :academic_professional_qualifications do |t|
      t.datetime :date
      t.string :certificate_attachment
      t.integer :admission_id

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_professional_qualifications
  end
end
