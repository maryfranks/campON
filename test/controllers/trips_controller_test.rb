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
    patch trip_url(@trip), params: { trip: { name: nil } }
    assert_select "h1", "Edit your trip"
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
    post trips_url, params: { trip: { name: nil } }
    assert_select "form"
  end

  test "invitation is created" do
    skip
  end

  test "when invitation fails redirects to trip show" do
    skip
    invite = Invitation.new(trip: @trip ,email: nil)
    invite.save
    # assert_equal FLASH MESSAGE
  end

  test "invited user added to trip when they view show page" do
    # on this branch until merge with master test should fail
    # skip
    user_inviting = users(:mary)
    user = users(:martine)
    new_trip = trips(:two)
    invitation = Invitation.new(email: user.email, trip: new_trip)
    invitation.save
    get trip_url(new_trip)
    assert_includes(new_trip.users, user)
  end

end
