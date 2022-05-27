class Answer < ApplicationRecord
  belongs_to :specialty
  belongs_to :question
end
