require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "todo fixtures" do
    assert_equal 3, Todo.count
  end

  test "todo saves with only text and user" do
    # test passes when the todo saves
    todo = Todo.new
    todo.trip = trips(:one)
    todo.text = "Do This!"
    assert todo.save
  end

  test "todo does not save without text" do
    # test passes when the save fails
    todo = Todo.new
    todo.trip = trips(:one)
    refute todo.save
  end

  test "can add user to todo" do
    todo = todos(:one)
    todo.user = users(:martine)
    assert_equal "Martine", todo.user.name
  end

end
