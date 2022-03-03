class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @user_skill = UserSkill.find(params[:user_skill_id])
    @skill = @user_skill.skill.name
    @booking = Booking.new(booking_params)
    @booking.user_skill_id = @user_skill.id
    @booking.skill = @skill
  
    raise
    @booking.save
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:remote, :message, :student_id, :teacher_id, :date, :user_skill_id)
  end
end
