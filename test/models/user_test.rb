require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@empty_user = users(:empty)
	end

	# Move this to test helper!
	def assert_presence(model, field)
		model.valid?
		assert_match /can't be blank/, model.errors[field].join, "Presence error for #{field} not found on #{model.class}"
	end

  test "user is invalid without attributes" do
    assert !@empty_user.valid?, "User didnt pass validation, attributes are not being enforced via validation"
  end

  test "user valid" do
  	@empty_user.first_name = nil
  	assert_presence @empty_user, :first_name
  end
end
