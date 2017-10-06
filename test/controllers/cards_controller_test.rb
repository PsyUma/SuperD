require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  test "should get cards" do
    get cards_cards_url
    assert_response :success
  end

end
