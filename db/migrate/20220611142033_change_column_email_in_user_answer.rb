class ChangeColumnEmailInUserAnswer < ActiveRecord::Migration[6.1]
  def change
    change_column :user_answers, :email, :string
  end
end
