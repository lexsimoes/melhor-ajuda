class RemoveSecondTimeOptionFromUserAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_answers, :second_time_option, :time
  end
end
