require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get listing" do
    get items_listing_url
    assert_response :success
  end

end
