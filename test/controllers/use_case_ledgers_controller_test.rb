require 'test_helper'

class UseCaseLedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use_case_ledger = use_case_ledgers(:one)
  end

  test "should get index" do
    get use_case_ledgers_url
    assert_response :success
  end

  test "should get new" do
    get new_use_case_ledger_url
    assert_response :success
  end

  test "should create use_case_ledger" do
    assert_difference('UseCaseLedger.count') do
      post use_case_ledgers_url, params: { use_case_ledger: { use_case_code: @use_case_ledger.use_case_code } }
    end

    assert_redirected_to use_case_ledger_url(UseCaseLedger.last)
  end

  test "should show use_case_ledger" do
    get use_case_ledger_url(@use_case_ledger)
    assert_response :success
  end

  test "should get edit" do
    get edit_use_case_ledger_url(@use_case_ledger)
    assert_response :success
  end

  test "should update use_case_ledger" do
    patch use_case_ledger_url(@use_case_ledger), params: { use_case_ledger: { use_case_code: @use_case_ledger.use_case_code } }
    assert_redirected_to use_case_ledger_url(@use_case_ledger)
  end

  test "should destroy use_case_ledger" do
    assert_difference('UseCaseLedger.count', -1) do
      delete use_case_ledger_url(@use_case_ledger)
    end

    assert_redirected_to use_case_ledgers_url
  end
end
