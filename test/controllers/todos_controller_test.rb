require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @todo = todos(:one)
    sign_in_as users(:martine)
    @trip = trips(:three)
  end

  test "create" do
    skip
  end

  test "edit" do
    skip
  end

  test "update" do
    skip
  end

  test "destroy" do
    skip
  end

end
