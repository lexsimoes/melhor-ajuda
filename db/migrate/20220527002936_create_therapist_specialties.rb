class CreateTherapistSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :therapist_specialties do |t|
      t.references :specialty, null: false, foreign_key: true
      t.references :therapist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
