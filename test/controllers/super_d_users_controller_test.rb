require 'test_helper'

class SuperDUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_d_user = super_d_users(:one)
  end

  test "should get index" do
    get super_d_users_url
    assert_response :success
  end

  test "should get new" do
    get new_super_d_user_url
    assert_response :success
  end

  test "should create super_d_user" do
    assert_difference('SuperDUser.count') do
      post super_d_users_url, params: { super_d_user: { first: @super_d_user.first, last: @super_d_user.last } }
    end

    assert_redirected_to super_d_user_url(SuperDUser.last)
  end

  test "should show super_d_user" do
    get super_d_user_url(@super_d_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_d_user_url(@super_d_user)
    assert_response :success
  end

  test "should update super_d_user" do
    patch super_d_user_url(@super_d_user), params: { super_d_user: { first: @super_d_user.first, last: @super_d_user.last } }
    assert_redirected_to super_d_user_url(@super_d_user)
  end

  test "should destroy super_d_user" do
    assert_difference('SuperDUser.count', -1) do
      delete super_d_user_url(@super_d_user)
    end

    assert_redirected_to super_d_users_url
  end
end
