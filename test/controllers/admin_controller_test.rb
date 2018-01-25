require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get surveys" do
    get admin_surveys_url
    assert_response :success
  end

end
