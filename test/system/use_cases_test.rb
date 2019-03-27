require "application_system_test_case"

class UseCasesTest < ApplicationSystemTestCase
  setup do
    @use_case = use_cases(:one)
  end

  test "visiting the index" do
    visit use_cases_url
    assert_selector "h1", text: "Use Cases"
  end

  test "creating a Use case" do
    visit use_cases_url
    click_on "New Use Case"

    fill_in "Address", with: @use_case.address
    fill_in "Client name", with: @use_case.client_name
    fill_in "Date", with: @use_case.date
    fill_in "Division", with: @use_case.division
    fill_in "Memo", with: @use_case.memo
    fill_in "Mod", with: @use_case.mod
    fill_in "Number", with: @use_case.number
    fill_in "Product name", with: @use_case.product_name
    fill_in "Store", with: @use_case.store
    click_on "Create Use case"

    assert_text "Use case was successfully created"
    click_on "Back"
  end

  test "updating a Use case" do
    visit use_cases_url
    click_on "Edit", match: :first

    fill_in "Address", with: @use_case.address
    fill_in "Client name", with: @use_case.client_name
    fill_in "Date", with: @use_case.date
    fill_in "Division", with: @use_case.division
    fill_in "Memo", with: @use_case.memo
    fill_in "Mod", with: @use_case.mod
    fill_in "Number", with: @use_case.number
    fill_in "Product name", with: @use_case.product_name
    fill_in "Store", with: @use_case.store
    click_on "Update Use case"

    assert_text "Use case was successfully updated"
    click_on "Back"
  end

  test "destroying a Use case" do
    visit use_cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Use case was successfully destroyed"
  end
end
