require 'test_helper'

class SusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suser = susers(:one)
  end

  test "should get index" do
    get susers_url
    assert_response :success
  end

  test "should get new" do
    get new_suser_url
    assert_response :success
  end

  test "should create suser" do
    assert_difference('Suser.count') do
      post susers_url, params: { suser: { address: @suser.address, category: @suser.category, company: @suser.company, email: @suser.email, firstname: @suser.firstname, isSubscribedForEmailUpdates: @suser.isSubscribedForEmailUpdates, isSubscribedForNewsletter: @suser.isSubscribedForNewsletter, lastname: @suser.lastname } }
    end

    assert_redirected_to suser_url(Suser.last)
  end

  test "should show suser" do
    get suser_url(@suser)
    assert_response :success
  end

  test "should get edit" do
    get edit_suser_url(@suser)
    assert_response :success
  end

  test "should update suser" do
    patch suser_url(@suser), params: { suser: { address: @suser.address, category: @suser.category, company: @suser.company, email: @suser.email, firstname: @suser.firstname, isSubscribedForEmailUpdates: @suser.isSubscribedForEmailUpdates, isSubscribedForNewsletter: @suser.isSubscribedForNewsletter, lastname: @suser.lastname } }
    assert_redirected_to suser_url(@suser)
  end

  test "should destroy suser" do
    assert_difference('Suser.count', -1) do
      delete suser_url(@suser)
    end

    assert_redirected_to susers_url
  end
end
