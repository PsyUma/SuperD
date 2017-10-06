require 'test_helper'

class ForgotpasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get forgotpassword" do
    get forgotpassword_forgotpassword_url
    assert_response :success
  end

end
