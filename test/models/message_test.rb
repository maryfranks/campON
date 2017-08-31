require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "message fixtures" do
    assert_equal 2, Message.count 
  end
end
