require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get locations_new_url
    assert_response :success
  end

  test "should get crate" do
    get locations_crate_url
    assert_response :success
  end

end
