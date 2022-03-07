class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :student, class_name: "User"
  belongs_to :teacher, class_name: "User"

  validates :name, presence: true
end
