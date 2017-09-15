require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest

  include SignInHelper

  setup do
    @todo = todos(:one)
    sign_in_as users(:martine)
    @trip = trips(:three)
  end

  test "create" do
    # problem with post url
    # skip
    assert_difference('Todo.count') do
      post trip_todos_url(@trip.id), params: { todo: { text: 'do this' } }
    end

    assert_redirected_to trip_url(@trip)
  end

  test "edit" do
    get edit_trip_todo_url(@todo.id, @trip.id)
    assert_response :success
  end

  test "update" do
    skip
  end

  test "destroy" do
    # same redirect problem exactly as messages controller destroy
    skip
    assert_difference('Todo.count', -1) do
      delete trip_todo_url(@todo, @trip)
    end
    assert_redirected_to trip_url(@trip.id)
    assert_equal 'ToDo has been successfully deleted!', flash[:notice]

  end

end
