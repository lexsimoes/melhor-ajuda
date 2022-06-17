class AddColumnDateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :date, :date
    add_column :users, :time, :string
    add_column :users, :second_time_option, :string
  end
end
