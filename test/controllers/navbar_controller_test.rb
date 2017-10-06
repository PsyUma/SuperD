require 'test_helper'

class NavbarControllerTest < ActionDispatch::IntegrationTest
  test "should get navbar" do
    get navbar_navbar_url
    assert_response :success
  end

end
