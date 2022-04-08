class UserSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validates :description, length: { maximum: 100, alert: "100 characters maximum allowed" }
end
