class UserSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :bookings
  has_many :reviews
end
