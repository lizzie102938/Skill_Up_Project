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
    else
      @skills = policy_scope(Skill)
    end
  end

  def show
    @skill = Skill.find(params[:id])
    authorize @skill
    @users = policy_scope(User).joins(:user_skills).where(user_skills: { skill: @skill })
    if params[:city].present?
      @users = @users.where(location: params[:city].capitalize)
    end
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end
end
