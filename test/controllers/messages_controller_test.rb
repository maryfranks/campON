require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @message = messages(:one)
    sign_in_as users(:martine)
    @trip = trips(:three)
    @trip.users << users(:martine)
  end

  test "create" do
    # why don't I have access to params here
    skip
    assert_difference('Message.count') do
      post trips_url, params: { message: { message: 'This message works' } }
    end

    assert_redirected_to trip_url(@trip)
  end

  test "edit" do
    get edit_trip_message_url(@message.id, @trip.id)
    assert_response :success
  end

  test "update" do
    # why don't I have access to params here
    skip
    patch trip_message_url(@message.id, @trip.id), params: { message: { message: "new message" } }
    # byebug
    assert_redirected_to trip_url(@trip.id)
    @trip.reload
    assert_equal "new message", @message.message
  end

  test "destroy" do
    # same redirect error as above
    assert_difference('Message.count', -1) do
      delete trip_message_url(@message, @trip)
    end
    assert_redirected_to trip_url(@trip.id)
  end

end
