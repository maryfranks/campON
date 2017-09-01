require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  test "message is saved with a trip_id" do
    message = Message.new
    message.trip_id = 1
    assert message.save
  end

  test "message does not save without a trip_id" do
  end

  test "message is saved with a user_id" do
  end

  test "message does not save without a user_id" do
  end

  test "message can be edited" do
  end

  test "message cannot be deleted" do
  end

end
