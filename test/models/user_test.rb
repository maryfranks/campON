require 'test_helper'

class UserTest < ActiveSupport::TestCase

test "user should not save without name" do
  user = User.new(email: 'nadia@boo.ca', password: '1234')
  assert_not user.save
end

test "user should not save without password" do
  user = User.new(email: 'nadia@boo.ca', name: 'nadia')
  assert_not user.save
end

test "user should not save without email" do
  user = User.new(name: 'nadia', password: '1234')
  assert_not user.save
end

test "user can login" do
  result = false
  user = users(:martine)
  password = '1234'
  if user && user.authenticate(password)
    result = true
  end
  assert result
end


end

user
