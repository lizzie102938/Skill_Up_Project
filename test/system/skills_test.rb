require "application_system_test_case"

class SkillsTest < ApplicationSystemTestCase
  test "see index of 16 skills on click 'browse all skills' " do
    visit root_url
    click_on "Browse all skills"
    assert_equal skills_url, page.current_url
    assert_selector "h2", text: "Your results"
    assert_selector ".skill-name", count: Skill.count
  end
end
