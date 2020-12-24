require 'test_helper'

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get avatars_edit_url
    assert_response :success
  end

end
