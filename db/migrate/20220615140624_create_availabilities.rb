class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.time :time
      t.time :time2

      t.timestamps
    end
  end
end
