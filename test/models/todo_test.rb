require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  test "todo saves with only text and trip" do
    # test passes when the todo saves
    todo = Todo.new
    todo.trip = trips(:basic_trip)
    todo.text = "Do This!"
    assert todo.save
  end

  test "todo does not save without text" do
    # test passes when the save fails
    todo = Todo.new
    todo.trip = trips(:basic_trip)
    refute todo.save
  end

  test "todo does not save without trip" do
    todo = Todo.new
    todo.text = "Do this!"
    refute todo.save
  end

  test "can add user to todo" do
    todo = todos(:fishing_trip)
    todo.user = users(:martine)
    assert_equal "Martine", todo.user.name
  end

end
