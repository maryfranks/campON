require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
      get parks_url
      assert_response :success
    end

    test "should get show" do
      park = parks(:park)
      get park_url(park)
      assert_response :success
    end

end
