class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  belongs_to :user_skill

  validates :title, :rating, :content, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5 }
end
