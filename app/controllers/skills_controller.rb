class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    @users = User.all
    @users = User.where(@users.user_skills.name == @skill.name)
  end
end
