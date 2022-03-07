class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:skill].present?
      @skills = policy_scope(Skill).where("name ILIKE ?", "%#{params[:skill]}%")
    else
      @skills = policy_scope(Skill)
    end

    if params[:city].present?
      @skills = @skills.select { |skill| skill.users.any? { |user| user.location.downcase == params[:city].downcase } }
      # also need to add case insensitive
    else
      @skills
    end

  end

  def show
    @skill = Skill.find(params[:id])
    authorize @skill
    @users = policy_scope(User).joins(:user_skills).where(user_skills: { skill: @skill })
    @users = @users.select { |user| user.location == params[:city] }
  end
end
