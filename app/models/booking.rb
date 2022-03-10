class Booking < ApplicationRecord
  # Association
  has_many :reviews, dependent: :destroy
  belongs_to :student, class_name: "User"
  belongs_to :teacher, class_name: "User"
  belongs_to :user_skill

  # Validation
  validates :message, :status, :skill, :date, presence: true
  validates :status, inclusion: { in: ['Pending', 'Rejected', 'Accepted', 'Finished', 'Canceled'] }
end
