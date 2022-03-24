require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill = skills(:one)
  end

  test "should get index" do
    get skills_url
    assert_response :success
  end

  test "should show skill" do
    get skill_url(@skill)
    assert_response :success
  end
end
