require 'test_helper'

class BoatjobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boatjobs_index_url
    assert_response :success
  end

  test "should get new" do
    get boatjobs_new_url
    assert_response :success
  end

  test "should get create" do
    get boatjobs_create_url
    assert_response :success
  end

  test "should get show" do
    get boatjobs_show_url
    assert_response :success
  end

  test "should get update" do
    get boatjobs_update_url
    assert_response :success
  end

  test "should get edit" do
    get boatjobs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get boatjobs_destroy_url
    assert_response :success
  end

end
