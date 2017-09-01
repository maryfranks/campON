require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "message fixtures" do
    assert_equal 3, Message.count 
  end
end
