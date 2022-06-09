class RemoveUserFromUserAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :user_answers, :user, null: false, foreign_key: true
  end
end
