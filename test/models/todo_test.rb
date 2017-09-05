require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "todo fixtures" do
    assert_equal 3, Todo.count
  end

  test "todo saves with only a name" do
    # test passes when the todo saves
    # trip = Trip.new
    # trip.name = "New Trip"
    # assert trip.save
  end

  test "todo does not save without name" do
    # test passes when the save fails
    # trip = Trip.new()
    # refute trip.save
  end

  test "can add user to todo" do

  end

end
