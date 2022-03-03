class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @user_skill = UserSkill.find(params[:user_skill_id])
    @skill = @user_skill.skill.name
    @booking = Booking.new(booking_params)
    @booking.user_skill_id = @user_skill.id
    @booking.skill = @skill
    @booking.status = 'pending'
    @booking.student_id = current_user.id
    @booking.teacher_id = @user_skill.id
    authorize @booking
    if @booking.save!
      redirect_to dashboard_path
    else
      render 'user_skills/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:remote, :message, :student_id, :teacher_id, :date, :user_skill_id)
  end
end
