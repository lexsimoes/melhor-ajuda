class AddSecondTimeToUserAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :second_time_option, :string
  end
end
