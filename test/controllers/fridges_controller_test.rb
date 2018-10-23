require 'test_helper'

class FridgesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fridges_index_url
    assert_response :success
  end

  test "should get new" do
    get fridges_new_url
    assert_response :success
  end

  test "should get show" do
    get fridges_show_url
    assert_response :success
  end

  test "should get create" do
    get fridges_create_url
    assert_response :success
  end

  test "should get delete" do
    get fridges_delete_url
    assert_response :success
  end

  test "should get edit" do
    get fridges_edit_url
    assert_response :success
  end

  test "should get update" do
    get fridges_update_url
    assert_response :success
  end

end
