class Review < ApplicationRecord
  belongs_to :booking

  validates :title, :rating, :content, presence: true
  validates :rating, numericality: true, inclusion: { in: 0..5 }
end
