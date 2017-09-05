require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "todo fixtures" do
    assert_equal 3, Todo.count
  end
end
