class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
  validates :name, uniqueness: true

  pg_search_scope :search_by_skill_and_city,
    against: [ :skill, :city ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
