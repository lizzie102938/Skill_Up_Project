class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @user_skill = UserSkill.find(params[:user_skill_id])
    @skill = @user_skill.skill.name
    @booking = Booking.new(booking_params)
    @booking.user_skill = @user_skill
    @booking.skill = @skill
    @booking.status = 'Pending'
    @booking.student = current_user
    @booking.teacher = @user_skill.user
    @booking.remote = params[:booking][:remote] == '0' ? false : true
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render 'user_skills/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    authorize @booking
    redirect_to dashboard_path :notice => "Your booking has been deleted"
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @status = 'Accepted'
    @booking.status = @status
    authorize @booking
    if @booking.update
      redirect_to dashboard_path
    else
      # render 'user_skills/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:remote, :message, :date)
  end
end
