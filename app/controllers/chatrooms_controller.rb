class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:chat])
    @message = Message.new
    authorize @chatroom
    authorize @message
    @bookings = Booking.where(student: current_user, teacher: @chatroom.teacher).or(Booking.where(teacher: current_user, student: @chatroom.student))
  end

end
