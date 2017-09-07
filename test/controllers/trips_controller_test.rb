require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @trip = trips(:one)
    @trip.users << users(:martine)
    sign_in_as users(:martine)
  end
# tests routes (no index for trips)
  test "should get show" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { name: "updated" } }

    assert_redirected_to trip_path(@trip)
    @trip.reload
    assert_equal "updated", @trip.name
  end

  test "should destroy trip" do

    sign_in_as users(:martine)
    assert_difference('Trip.count', -1) do
    delete trip_url(@trip)
    end
    assert_redirected_to user_path
  # WON'T REDIRECT TO USER SHOW
  end

  test "should create trip" do
    # skip
    assert_difference('Trip.count') do
      sign_in_as users(:martine)
      post trips_url, params: { trip: { name: 'Really Fun Trip!' } }
    end

    assert_redirected_to user_path
  end

end
