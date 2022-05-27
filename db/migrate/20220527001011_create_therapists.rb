class CreateTherapists < ActiveRecord::Migration[6.1]
  def change
    create_table :therapists do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :bio

      t.timestamps
    end
  end
end
