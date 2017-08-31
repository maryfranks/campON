require 'test_helper'

class TripTest < ActiveSupport::TestCase

  test "trip fixtures" do
    assert_equal 3, Trip.count
  end

  test "user can create trip" do
    skip
  end

  test "trip must have name" do
    # When you save a trip with a name the test passes
    skip
  end

  test "trip name validation" do
  # when you save a trip without a name it fails and the test passes
  skip
  end

  test "user can comment on trip" do
    skip
  end

  test "trip view displays all comments" do
    skip
  end

  test "add park to trip" do
    # how to change code and make test fail?
    trip = trips(:one)
    trip.park = Park.first
    assert_equal Park.first.name, trip.park.name

  end

  test "add start date to trip" do
    # how to change code and make test fail?
    trip = trips(:one)
    trip.start_date = Date.today + 10
    assert_equal Date.today + 10, trip.start_date

  end

  test "add end date to trip" do
    # how to change code and make test fail?
    trip = trips(:one)
    trip.end_date = Date.today + 10
    assert_equal Date.today + 10, trip.end_date

  end

  test "user can add users to trip" do
    skip
  end

  test "user can change booked to true" do
    trip = trips(:one)
    trip.booked = true
    assert_equal true, trip.booked
  end

  test "trip displays users" do
    skip
  end

  test "trip displays dates" do
    skip
  end

  test "trip displays booked checkmark" do
    skip
  end

  test "trip displays park" do
    skip
  end

  # user can invite ---> should be on trip?
  # user can join trip ---> should be on trip?


end
