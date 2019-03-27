require 'test_helper'

class DbInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @db_info = db_infos(:one)
  end

  test "should get index" do
    get db_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_db_info_url
    assert_response :success
  end

  test "should create db_info" do
    assert_difference('DbInfo.count') do
      post db_infos_url, params: { db_info: { db_info_no: @db_info.db_info_no } }
    end

    assert_redirected_to db_info_url(DbInfo.last)
  end

  test "should show db_info" do
    get db_info_url(@db_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_db_info_url(@db_info)
    assert_response :success
  end

  test "should update db_info" do
    patch db_info_url(@db_info), params: { db_info: { db_info_no: @db_info.db_info_no } }
    assert_redirected_to db_info_url(@db_info)
  end

  test "should destroy db_info" do
    assert_difference('DbInfo.count', -1) do
      delete db_info_url(@db_info)
    end

    assert_redirected_to db_infos_url
  end
end
