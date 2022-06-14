class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :alternative

  # validates :email, format: { with: /@/ }
  # validates :question_id, presence = true
end
