class RemoveSecondTimeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :second_time_option, :time
  end
end
