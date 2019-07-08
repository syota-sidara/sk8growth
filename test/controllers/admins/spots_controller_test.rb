require 'test_helper'

class Admins::SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_spots_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_spots_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_spots_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_spots_edit_url
    assert_response :success
  end

end
