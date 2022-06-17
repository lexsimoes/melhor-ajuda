class RemoveTimeFromUserAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_answers, :time, :time
  end
end
