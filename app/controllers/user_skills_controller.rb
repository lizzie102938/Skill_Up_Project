class UserSkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user_skill = UserSkill.find(params[:id])
    @user = @user_skill.user
    @user_skills = @user.skills.where.not(id: @user_skill.skill)

    authorize @user_skill
    @booking = Booking.new
    @bookings = Booking.where(user_skill: @user_skill)
    @reviews = @user_skill.reviews
    sum = 0
    @reviews.each do |review|
      sum += review.rating
    end
    @average_rating = sum.fdiv(@reviews.count).floor(1)
    # @user_id = @user_skill.user_id
    # @user_skills = UserSkill.where(:@user_id)

  end

  def create
    @user_skill = UserSkill.new
    @skill = Skill.find(params[:user_skill][:skill].to_i)
    @user_skill.skill = @skill
    @user_skill.user = current_user
    @user_skill.description = params[:user_skill][:description]
    authorize @user_skill
    if @user_skill.save
      redirect_to dashboard_path
    else
      flash[:alert] = "New skill not saved. 100 characters maximum allowed."
      redirect_to dashboard_path
    end
  end

  def edit
    @user_skill = UserSkill.find(params[:id])
  end

  def update
    @user_skill = UserSkill.find(params[:id])
    @user_skill.description = params[:description] || params[:user_skill][:description]
    @user_skill.save
    authorize @user_skill
    if @user_skill.save!
      redirect_to dashboard_path
    else
      render
    end
  end

  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy
    authorize @user_skill
    redirect_to dashboard_path
  end

  private

  def params_user_skill
    params.require(:user_skill).permit(:name, :skill, :description, :id)
  end
end
