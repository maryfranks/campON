require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @trip = trips(:messages_todos_trip)
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
    assert_difference('User.count') do
      post user_url, params: { user: { name: "person", email: 'user@email.com', password: "1234", password_confirmation: "1234" } }
    end

    assert_redirected_to user_path
    assert_equal 'Account successfully created!', flash[:notice]
  end

  test "user save fail" do
    post user_url, params: { user: { email: nil } }
    assert_select "h1", "Sign Up"
    assert_equal 'Sorry, try again!', flash[:error]
  end

end
