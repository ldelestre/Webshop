require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get cart" do
    get carts_cart_url
    assert_response :success
  end

end
