require 'test_helper'

class ClientInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_info = client_infos(:one)
  end

  test "should get index" do
    get client_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_client_info_url
    assert_response :success
  end

  test "should create client_info" do
    assert_difference('ClientInfo.count') do
      post client_infos_url, params: { client_info: {  } }
    end

    assert_redirected_to client_info_url(ClientInfo.last)
  end

  test "should show client_info" do
    get client_info_url(@client_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_info_url(@client_info)
    assert_response :success
  end

  test "should update client_info" do
    patch client_info_url(@client_info), params: { client_info: {  } }
    assert_redirected_to client_info_url(@client_info)
  end

  test "should destroy client_info" do
    assert_difference('ClientInfo.count', -1) do
      delete client_info_url(@client_info)
    end

    assert_redirected_to client_infos_url
  end
end
