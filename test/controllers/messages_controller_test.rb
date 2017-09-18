require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @message = messages(:canoe_trip)
    sign_in_as users(:martine)
    @trip = trips(:messages_trip)
    @trip.users << users(:martine)
  end

  test "create" do
    assert_difference('Message.count') do
      post trip_messages_url(@trip.id), params: { message: { message: 'This message works' } }
    end

    assert_redirected_to trip_url(@trip)
  end

  test "edit" do
    get edit_trip_message_url(@trip.id, @message.id)
    assert_response :success
  end

  test "update" do
    patch trip_message_url(@trip.id, @message.id), params: { message: { message: "new message" } }
    @message.reload
    assert_redirected_to trip_url(@trip.id)
    assert_equal "new message", @message.message
  end

  test "destroy" do

    assert_difference('Message.count', -1) do
      delete trip_message_url(@trip, @message)
    end
    assert_redirected_to trip_url(@trip.id)
    assert_equal 'Message has been successfully deleted!', flash[:notice]

  end

end
