require 'test_helper'

class TablesControllerTest < ActionDispatch::IntegrationTest
  test "should get tables" do
    get tables_tables_url
    assert_response :success
  end

end
