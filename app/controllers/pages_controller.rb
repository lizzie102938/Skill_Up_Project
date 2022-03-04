class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @skills = Skill.where(name: params[:query])
    else
      @skills = policy_scope(Skill)
    end
  end

  def dashboard
    @bookings = Booking.where(student: current_user)
  end
end
