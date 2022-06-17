class AddTimeToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :time, :string
  end
end
