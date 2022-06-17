class AddSecondTimeOptionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :second_time_option, :string
  end
end
