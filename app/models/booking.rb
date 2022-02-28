class Booking < ApplicationRecord
  # Association
  has_many :reviews

  # Validation
  validates :message, :status, :skill, :remote, presence: true
  validates :status, inclusion: { in: ['pending', 'rejected', 'finished', 'canceled'] }
end
