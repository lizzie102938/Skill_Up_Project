class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create


  def create
    @booking = Booking.new(booking_params)
    raise
    @booking.save
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:remote, :message, :student_id, :teacher_id, :date, :user_skill_id)
  end
end
