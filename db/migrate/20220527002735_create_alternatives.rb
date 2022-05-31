class CreateAlternatives < ActiveRecord::Migration[6.1]
  def change
    create_table :alternatives do |t|
      t.text :description
      t.references :question, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
