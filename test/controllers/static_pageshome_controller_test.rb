require 'test_helper'

class StaticPageshomeControllerTest < ActionDispatch::IntegrationTest
  
  test "should get contact" do
    get static_pageshome_team_url
    assert_response :success
  end

  test "should get about" do
    get static_pageshome_about_url
    assert_response :success
  end

  test "should get landing" do
    get root_url
    assert_response :success
  end

end
