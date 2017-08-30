require 'test_helper'

class TripTest < ActiveSupport::TestCase
  test "trip fixtures" do
    assert_equal 3, Trip.count 
  end
end
