require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @trip = trips(:one)
    @trip.users << users(:martine)
    sign_in_as users(:martine)
  end
# tests routes (no index for trips)
  test "should get show when user is signed in" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should add invited user to trip" do
    skip
  end

  test "user can only see trips when signed in" do
    skip
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
    assert_equal 'Trip successfully updated!', flash[:notice]

  end

  test "should render trips edit when update fails" do
    skip
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
    delete trip_url(@trip)
    end
    assert_redirected_to user_path
    assert_equal 'Trip has been successfully deleted!', flash[:notice]

  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { name: 'Really Fun Trip!' } }
    end

    assert_redirected_to user_path
    assert_equal 'You have successfully created a new trip!', flash[:notice]
  end

  test "trip not created render new trip form" do
    skip
  end

  test "invite user sends email" do
    # method finds user in db and adds them to trip
    skip
  end

  test "when invitation fails redirects to trip show" do
    skip
  end

  test "invited user added to trip after sign up" do
    # on this branch until merge with master test should fail
    skip
    # use assert_includes to check if something is in collection
  end

end
