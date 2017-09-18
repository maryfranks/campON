require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  test "message does not save without text" do
    message = Message.new
    message.user = users(:martine)
    message.trip = trips(:basic_trip)
    message.message = "Please do save"
    assert message.save
  end

  test "message saves with a text" do
    message = Message.new
    message.trip = trips(:basic_trip)
    message.user = users(:martine)
    message.message = "Please do save"
    assert message.save
  end

  test "message is saved with a user" do
    message = Message.new
    message.trip = trips(:basic_trip)
    message.message = "Please do save"
    refute message.save
  end

  test "message is saved without a trip" do
    message = Message.new
    message.user = users(:martine)
    message.message = "Please do save"
    refute message.save
  end

  test "message does not save without a user" do
    message = Message.new
    message.trip = trips(:basic_trip)
    message.user = users(:martine)
    message.message = "Please do save"
    assert message.save
  end

  test "message does not save without a trip" do
    message = Message.new
    message.user = users(:martine)
    message.trip = trips(:basic_trip)
    message.message = "Please do save"
    assert message.save
  end

end
