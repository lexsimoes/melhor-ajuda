class Therapist < ApplicationRecord
  has_many :specialties, through: :therapist_specialties
  has_many :matches
  has_many :users, through: :matches
  has_many :availabilities
end
