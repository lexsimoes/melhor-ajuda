class AddAlternativeToUserAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_answers, :alternative, null: false, foreign_key: true
  end
end
