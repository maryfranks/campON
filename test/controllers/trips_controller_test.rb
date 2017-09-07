require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @trip = trips(:one)
  end

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

  # test "should destroy trip" do
  #   assert_difference('Trip.count', -1) do
  #   delete trip_url(@trip)
  #   end
  #   user = users(:martine)
  #   assert_redirected_to user_path(user)
  # end

  # test "should create trip" do
  #   assert_difference('Trip.count') do
  #     post trips_url, params: { trip: { name: 'Really Fun Trip!' } }
  #     users(:martine) >> JOIN TABLE!!!
  #   end
  #
  #   assert_redirected_to trip_path(Trip.last)
  # end


#######-----------------------------

  #
  # test "should update post" do
  #   patch :update, id: @post, post: { body: @post.body, title: @post.title }
  #   assert_redirected_to post_path(assigns(:post))
  # end
  #
end
