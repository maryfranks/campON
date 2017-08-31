require 'test_helper'

class ParkTest < ActiveSupport::TestCase
  test "park fixtures" do
    assert_equal 4, Park.count 
  end
end
