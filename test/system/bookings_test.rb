require "application_system_test_case"
require "test_helper"

class BookingsTest < ApplicationSystemTestCase
  test "visiting the bookings on dashboard" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd',
      :location => 'Berlin', :address => '10555, Berlin', :language => 'German',
      :description => 'fake description')
    login_as(user, :scope => :user)
    visit dashboard_url
    assert_selector "button", text: "Bookings"
  end
end
