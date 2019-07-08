require 'test_helper'

class Admins::ClipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_clips_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_clips_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_clips_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_clips_edit_url
    assert_response :success
  end

end
