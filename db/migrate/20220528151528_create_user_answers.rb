class CreateUserAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.text :email, null: false
      t.jsonb :answers, null: false, default: '{}'
      t.timestamps
    end
  end
end
