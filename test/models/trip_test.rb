require 'test_helper'

class TripTest < ActiveSupport::TestCase

  test "trip must have name" do
    # When you save a trip with a name the test passes
    skip
  end

  test "trip name validation" do
  # when you save a trip without a name it fails and the test passes
    trip = Trip.new()
    refute trip.save
  end

  test "trip displays associated comments" do
    skip
  end

  test "add park to trip" do
    trip = trips(:one)
    trip.park = Park.first
    assert_equal Park.first.name, trip.park.name
  end

  test "add start date to trip" do
    trip = trips(:one)
    trip.start_date = Date.today + 10
    assert trip.start_date

  end

  test "add end date to trip" do
    trip = trips(:one)
    trip.end_date = Date.today + 10
    assert trip.end_date

  end

  test "trip can have multiple users" do
    trip = trips(:one)
    trip.users << users(:martine)
    trip.users << users(:abby)
    assert_equal 2, trip.users.count
  end

  test "user can change booked to true" do
    trip = trips(:one)
    trip.booked = true
    assert_equal true, trip.booked
  end

end
