class AddUserSkillToBooking < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user_skill, index: true
  end
end
