require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @message = messages(:one)
    sign_in_as users(:martine)
    @trip = trips(:three)
  end

  test "current trip" do
    skip
  end

  test "create" do
    skip
  end

  test "search" do
    skip
  end

  test "edit" do
      get edit_trip_message_url(@message.id, @trip.id)
      assert_response :success
  end

  test "update" do
    skip
  end

  test "destroy" do
    skip
  end

end
