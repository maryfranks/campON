require 'test_helper'

class TripTest < ActiveSupport::TestCase

  test "trip saves with name" do
    trip = Trip.new
    trip.name = "New Trip"
    assert trip.save
  end

  test "trip does not save without name" do
    trip = Trip.new()
    refute trip.save
  end

  test "trip displays associated messages" do
    trip = trips(:messages_trip)
    assert_equal 1, trip.messages.count
  end

  test "trip displays associated todos" do
    trip = trips(:todos_trip)
    assert_equal 1, trip.todos.count
  end

  test "add park to trip" do
    trip = Trip.new(name: "New Trip")
    park = parks(:park)
    trip.park = park
    assert_equal park.name, trip.park.name
  end

  test "add start date to trip" do
    trip = trips(:basic_trip)
    trip.start_date = Date.today + 10
    assert trip.start_date
  end

  test "add end date to trip" do
    trip = trips(:basic_trip)
    trip.end_date = Date.today + 10
    assert trip.end_date
  end

  test "trip can have multiple users" do
    trip = trips(:basic_trip)
    trip.users << users(:martine)
    trip.users << users(:abby)
    assert_equal 2, trip.users.count
  end

  test "user can change booked to true" do
    trip = trips(:basic_trip)
    trip.booked = true
    assert_equal true, trip.booked
  end

end
