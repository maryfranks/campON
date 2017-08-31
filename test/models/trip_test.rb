require 'test_helper'

class TripTest < ActiveSupport::TestCase

  test "trip fixtures" do
    assert_equal 3, Trip.count
  end

  test "user can create trip" do

  end

  test "trip must have name" do
    # When you save a trip with a name the test passes
  end

  test "trip name validation" do
  # when you save a trip without a name it fails and the test passes
  end

  test "user can comment on trip" do

  end

  test "trip view displays all comments" do

  end

  test "add park to trip" do

    trip = trips(:one)
    trip.park = Park.first
    assert_equal trip.park.name, Park.first.name

  end

  test "add start date to trip" do

    trip = trips(:one)
    trip.start_date = Date.today + 10
    assert_equal trip.start_date, Date.today + 10

  end

  test "add end date to trip" do

  end

  test "user can add users to trip" do
    skip
  end

  test "user can change booked to true" do

  end

  test "trip displays users" do

  end

  test "trip displays dates" do

  end

  test "trip displays booked checkmark" do

  end

  test "trip displays park" do

  end

  # user can invite ---> should be on trip?
  # user can join trip ---> should be on trip?


end
