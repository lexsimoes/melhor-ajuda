class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :alternative
  # belongs_to :availability

  # validates :email, format: { with: /@/ }
  # validates :question_id, presence = true
end
