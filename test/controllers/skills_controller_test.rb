require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill = skills(:cooking)
  end

  test "should get index" do
    get skills_url
    assert_equal 'cooking', @skill.name
    assert_select 'h2', 'Your results'
    assert_response :success
  end

  test "should show skill" do
    get skill_url(@skill)
    assert_equal 'cooking', @skill.name
    assert_response :success
  end
end
