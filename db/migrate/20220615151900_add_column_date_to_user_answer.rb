class AddColumnDateToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :date, :date
    add_column :user_answers, :time, :time
    add_column :user_answers, :second_time_option, :time
  end
end
