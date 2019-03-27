require 'test_helper'

class UseCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use_case = use_cases(:one)
  end

  test "should get index" do
    get use_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_use_case_url
    assert_response :success
  end

  test "should create use_case" do
    assert_difference('UseCase.count') do
      post use_cases_url, params: { use_case: { address: @use_case.address, client_name: @use_case.client_name, date: @use_case.date, division: @use_case.division, memo: @use_case.memo, mod: @use_case.mod, number: @use_case.number, product_name: @use_case.product_name, store: @use_case.store } }
    end

    assert_redirected_to use_case_url(UseCase.last)
  end

  test "should show use_case" do
    get use_case_url(@use_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_use_case_url(@use_case)
    assert_response :success
  end

  test "should update use_case" do
    patch use_case_url(@use_case), params: { use_case: { address: @use_case.address, client_name: @use_case.client_name, date: @use_case.date, division: @use_case.division, memo: @use_case.memo, mod: @use_case.mod, number: @use_case.number, product_name: @use_case.product_name, store: @use_case.store } }
    assert_redirected_to use_case_url(@use_case)
  end

  test "should destroy use_case" do
    assert_difference('UseCase.count', -1) do
      delete use_case_url(@use_case)
    end

    assert_redirected_to use_cases_url
  end
end
