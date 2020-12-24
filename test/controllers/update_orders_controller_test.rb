require 'test_helper'

class UpdateOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get update_orders_update_url
    assert_response :success
  end

end
