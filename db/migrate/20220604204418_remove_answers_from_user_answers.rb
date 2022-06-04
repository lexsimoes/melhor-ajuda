class RemoveAnswersFromUserAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_answers, :answers
  end
end
