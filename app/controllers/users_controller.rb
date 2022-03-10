class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user_description = current_user
    @user.description = params[:description] || params[:user][:description]
    @user_skill.save
    authorize @user.description
    if @user_description.save!
      redirect_to dashboard_path
    else
      render
    end
  end
end
