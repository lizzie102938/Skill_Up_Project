require "application_system_test_case"
require "test_helper"

class UsersTest < ApplicationSystemTestCase
  test "creating new user" do
    visit root_url
    click_on "Login"
    click_on "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "hellotest", match: :first
    fill_in "Password confirmation", with: "hellotest"
    fill_in "City", with: "Berlin"
    fill_in "Address", with: "10555, Berlin"
    select "English", from: "Language"
    fill_in "Biography", with: "I am new to Berlin and looking to learn new things"
    click_on "Sign up"
    assert_equal root_url, page.current_url
    save_and_open_screenshot
  end
end
