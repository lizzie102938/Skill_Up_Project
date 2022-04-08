require "test_helper"

class UserSkillControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_skill = user_skills(:katie_cooking)
  end

  # test "should show a user skill" do
  #   # sign_in_as users(:janosch)

  #   get user_skill_url(@user_skill)
  #   assert_response :success
  # end
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
