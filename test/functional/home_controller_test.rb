require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get print" do
    get :print
    assert_response :success
  end

end
