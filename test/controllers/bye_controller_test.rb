require 'test_helper'

class ByeControllerTest < ActionController::TestCase
  test "should get back" do
    get :back
    assert_response :success
  end

end
