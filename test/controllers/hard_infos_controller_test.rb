require 'test_helper'

class HardInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hard_info = hard_infos(:one)
  end

  test "should get index" do
    get hard_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_hard_info_url
    assert_response :success
  end

  test "should create hard_info" do
    assert_difference('HardInfo.count') do
      post hard_infos_url, params: { hard_info: { UseCase_id: @hard_info.UseCase_id, address: @hard_info.address, connection_current: @hard_info.connection_current, connection_max: @hard_info.connection_max, fax: @hard_info.fax, hard_no: @hard_info.hard_no, memo: @hard_info.memo, store_name: @hard_info.store_name, tel: @hard_info.tel, worker_name: @hard_info.worker_name } }
    end

    assert_redirected_to hard_info_url(HardInfo.last)
  end

  test "should show hard_info" do
    get hard_info_url(@hard_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_hard_info_url(@hard_info)
    assert_response :success
  end

  test "should update hard_info" do
    patch hard_info_url(@hard_info), params: { hard_info: { UseCase_id: @hard_info.UseCase_id, address: @hard_info.address, connection_current: @hard_info.connection_current, connection_max: @hard_info.connection_max, fax: @hard_info.fax, hard_no: @hard_info.hard_no, memo: @hard_info.memo, store_name: @hard_info.store_name, tel: @hard_info.tel, worker_name: @hard_info.worker_name } }
    assert_redirected_to hard_info_url(@hard_info)
  end

  test "should destroy hard_info" do
    assert_difference('HardInfo.count', -1) do
      delete hard_info_url(@hard_info)
    end

    assert_redirected_to hard_infos_url
  end
end
