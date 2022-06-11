class RemoveColumnEmailToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_answers, :email
    add_reference :user_answers, :user, index: true
  end
end
