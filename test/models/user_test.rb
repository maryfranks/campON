require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user fixtures" do
    assert_equal 4, User.count
  end
end
