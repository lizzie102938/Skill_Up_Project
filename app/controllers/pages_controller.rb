class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :how_it_works ]

  def home
    if params[:query].present?
      @skills = Skill.where(name: params[:query])
    else
      @skills = policy_scope(Skill)
    end
  end

  def dashboard
    @bookings = Booking.where(student: current_user)
    @skills = Skill.all
    @user_skills = current_user.user_skills
    @user = current_user
    @new_skill = UserSkill.new
  end

  def how_it_works
  end
end
