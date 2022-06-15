class Availability < ApplicationRecord
  has_many :user_answers
  belongs_to :user
  belongs_to :user
  belongs_to :therapist
  # validates :date, :place, presence: true
  # validates :date, uniqueness: { scope: :place,
    # message: "Esta data já foi cadastrada" }

end
