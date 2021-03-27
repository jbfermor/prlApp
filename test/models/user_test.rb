require "test_helper"

class UserTest < ActiveSupport::TestCase

	test "Should have name" do
		usuario = User.new
		assert_not usuario.save
	end

end
