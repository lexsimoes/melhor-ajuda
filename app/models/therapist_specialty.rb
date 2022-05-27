class TherapistSpecialty < ApplicationRecord
  belongs_to :specialty
  belongs_to :therapist
end
