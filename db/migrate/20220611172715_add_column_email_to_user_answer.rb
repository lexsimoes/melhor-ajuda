class AddColumnEmailToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :email, :string
  end
end
