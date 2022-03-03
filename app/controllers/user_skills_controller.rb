class UserSkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user_skill = UserSkill.find(params[:id])
    authorize @user_skill
    @booking = Booking.new
  end
end
