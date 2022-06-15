class Availability < ApplicationRecord
  has_many :user_answers
  # validates :date, :place, presence: true
  # validates :date, uniqueness: { scope: :place,
    # message: "Esta data já foi cadastrada" }

end
