require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest

  test "log out" do
    delete session_url(:dummy)
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a", "bLogin"
  end

end
