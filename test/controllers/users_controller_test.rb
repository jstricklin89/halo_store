require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "the truth" do
    assert true
  end
  test "username required for new user" do
    user = User.new
    assert_not user.save, "Saved the user without a username"
  end
end
