class Alternative < ApplicationRecord
  belongs_to :question
  belongs_to :specialty
  has_many :user_answers
end
