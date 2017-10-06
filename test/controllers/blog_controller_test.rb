require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get blog" do
    get blog_blog_url
    assert_response :success
  end

end
