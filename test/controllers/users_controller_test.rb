require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @trip = trips(:one)
    @user = users(:martine)
    @trip.users << users(:martine)
    sign_in_as users(:martine)
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should get show when user is signed in" do
    get user_url(@user)
    assert_response :success
  end

  test "should create user" do
    skip
    assert_difference('User.count') do
      post user_url, params: { user: { email: 'user@email.com', password: "1234", password_confirmation: "1234" } }
    end

    assert_redirected_to user_path
    assert_equal 'Account successfully created!', flash[:notice]
  end

  test "test user save fail" do
    skip

    assert_equal 'Sorry, try again!!', flash[:notice]

  end

end
