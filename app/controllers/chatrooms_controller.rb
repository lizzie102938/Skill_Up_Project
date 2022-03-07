class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
    authorize @message
    #put the sql as a string
    # sql = 'SELECT * from bookings'
    # @bookings = Booking.connection.execute(sql)
    @bookings = Booking.where(student: current_user, teacher: @chatroom.teacher).or(Booking.where(teacher: current_user, student: @chatroom.student))
  end
end
