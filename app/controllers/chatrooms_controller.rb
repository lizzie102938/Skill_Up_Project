class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:chat])
    @message = Message.new
    authorize @chatroom
    authorize @message
    @bookings = Booking.where(student: @chatroom.student, teacher: @chatroom.teacher).or(Booking.where(teacher: @chatroom.student, student: @chatroom.teacher))
  end

end
