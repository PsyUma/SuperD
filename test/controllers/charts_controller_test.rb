require 'test_helper'

class ChartsControllerTest < ActionDispatch::IntegrationTest
  test "should get charts" do
    get charts_charts_url
    assert_response :success
  end

end
