class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :alternatives
end
