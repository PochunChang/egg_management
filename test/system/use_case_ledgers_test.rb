require "application_system_test_case"

class UseCaseLedgersTest < ApplicationSystemTestCase
  setup do
    @use_case_ledger = use_case_ledgers(:one)
  end

  test "visiting the index" do
    visit use_case_ledgers_url
    assert_selector "h1", text: "Use Case Ledgers"
  end

  test "creating a Use case ledger" do
    visit use_case_ledgers_url
    click_on "New Use Case Ledger"

    fill_in "Use case code", with: @use_case_ledger.use_case_code
    click_on "Create Use case ledger"

    assert_text "Use case ledger was successfully created"
    click_on "Back"
  end

  test "updating a Use case ledger" do
    visit use_case_ledgers_url
    click_on "Edit", match: :first

    fill_in "Use case code", with: @use_case_ledger.use_case_code
    click_on "Update Use case ledger"

    assert_text "Use case ledger was successfully updated"
    click_on "Back"
  end

  test "destroying a Use case ledger" do
    visit use_case_ledgers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Use case ledger was successfully destroyed"
  end
end
