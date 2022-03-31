require "test_helper"

class UserSkillControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_skill = user_skills(:katie_cooking)
  end

  test "should show a user skill" do
    # sign_in_as users(:janosch)

    get user_skill_url(@user_skill)
    assert_response :success
  end

end
