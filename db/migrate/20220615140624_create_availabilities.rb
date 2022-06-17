class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.string :time
      t.string :time2

      t.timestamps
    end
  end
end
