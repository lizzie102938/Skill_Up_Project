class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Association
  # bookings
  has_many :bookings_as_student, class_name: 'Booking', foreign_key: :student_id
  has_many :bookings_as_teacher, class_name: 'Booking', foreign_key: :teacher_id
  has_many :reviews, through: :bookings

  # skills
  has_many :user_skills
  has_many :skills, through: :user_skills

  # chatroom
  has_many :chatrooms_as_student, class_name: 'Chatroom', foreign_key: :student_id
  has_many :chatrooms_as_teacher, class_name: 'Chatroom', foreign_key: :teacher_id
  has_many :messages, through: :chatrooms

  # Validation
  validates :location, :language, :age, :description, :points, presence: true
  validates :points, numericality: true
end
