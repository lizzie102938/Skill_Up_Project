class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
    authorize @message
    @bookings = Booking.where(student: current_user, teacher: @chatroom.teacher).or(Booking.where(teacher: current_user, student: @chatroom.student))
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
end
