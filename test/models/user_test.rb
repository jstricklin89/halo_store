require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.create(username: 'John', password: 'testing')
    assert user.valid?
  end

  test 'invalid without name' do
    user = User.new(password_digest: 'testing')
    refute user.valid?, 'user is valid without a name'
    assert_not_nil user.errors[:username], 'no validation error for name present'
  end

  test 'invalid without password' do
    user = User.new(username: 'John')
    refute user.valid?
    assert_not_nil user.errors[:password]
  end
end
