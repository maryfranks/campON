require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest

  test "log out" do
    delete session_url(:v)
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a", "Login"
  end

end
