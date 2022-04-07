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
      if @booking.student.points >= 10
        @booking.student.points -= 10
        @booking.student.save
        @chatroom = Chatroom.where(teacher: @booking.teacher.id, student: @booking.student.id).or(Chatroom.where(teacher: @booking.student.id, student: @booking.teacher.id))
        if !@chatroom.present?
          @chatroom = Chatroom.create(student: current_user, teacher: @booking.teacher)
        else
          @chatroom
        end
        redirect_to dashboard_path
      else
        ## add alert
      end
    else
      render 'user_skills/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    @chatroom = Chatroom.where(teacher: @booking.teacher.id, student: @booking.student.id).or(Chatroom.where(teacher: @booking.student.id, student: @booking.teacher.id))
    authorize @booking
    @booking.student.points += 10
    @booking.student.save
    @booking.teacher.points -= 10
    @booking.teacher.save
    redirect_to chatroom_path(@chatroom, chat: @chatroom.ids.first), :alert => "Your booking has been deleted"
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @chatroom = Chatroom.where(teacher: @booking.teacher.id, student: @booking.student.id).or(Chatroom.where(teacher: @booking.student.id, student: @booking.teacher.id))
    if params[:status] == 'Accepted'
      @booking.date = params[:booking][:date]
      if @booking.status == 'Rejected'
        @booking.teacher.points += 10
        @booking.student.points -= 10
      elsif @booking.status == 'Accepted'
        @booking.teacher.points -= 0
        @booking.student.points += 0
      elsif @booking.status == 'Pending'
        @booking.teacher.points += 10
      end
      @booking.student.save
      @booking.teacher.save
    end
    if params[:status] == 'Rejected'
      if @booking.status == 'Rejected'
        @booking.teacher.points += 0
        @booking.student.points += 0
      elsif @booking.status == 'Accepted'
        @booking.teacher.points -= 10
        @booking.student.points += 10
      elsif @booking.status == 'Pending'
        @booking.student.points += 10
      end
      @booking.student.save
      @booking.teacher.save
    end
    @booking.status = params[:status]
    authorize @booking
    if @booking.save
      redirect_to chatroom_path(@chatroom, chat: @chatroom.ids.first)
    else
      # render 'user_skills/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:remote, :message, :date)
  end
end
