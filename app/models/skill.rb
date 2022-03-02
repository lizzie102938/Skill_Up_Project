class Skill < ApplicationRecord
  has_many :user_skills
  validates :name, uniqueness: true
end
