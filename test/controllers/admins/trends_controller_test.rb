require 'test_helper'

class Admins::TrendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_trends_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_trends_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_trends_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_trends_edit_url
    assert_response :success
  end

end
