class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :alternative

  #validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  # validates :question_id, presence = true
end
