class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @skills = Skill.all
  end
end
