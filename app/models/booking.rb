class Booking < ApplicationRecord
  # Association
  has_many :reviews
  belongs_to :student, class_name: "User"
  belongs_to :teacher, class_name: "User"

  # Validation
  validates :message, :status, :skill, :remote, presence: true
  validates :status, inclusion: { in: ['pending', 'rejected', 'accepted', 'finished', 'canceled'] }
end
