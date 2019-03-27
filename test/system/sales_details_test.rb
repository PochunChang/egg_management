require "application_system_test_case"

class SalesDetailsTest < ApplicationSystemTestCase
  setup do
    @sales_detail = sales_details(:one)
  end

  test "visiting the index" do
    visit sales_details_url
    assert_selector "h1", text: "Sales Details"
  end

  test "creating a Sales detail" do
    visit sales_details_url
    click_on "New Sales Detail"

    fill_in "Customize cost", with: @sales_detail.customize_cost
    fill_in "Date", with: @sales_detail.date
    fill_in "Product name", with: @sales_detail.product_name
    fill_in "Sales amount", with: @sales_detail.sales_amount
    fill_in "Sd no", with: @sales_detail.sd_no
    fill_in "Use case", with: @sales_detail.use_case_id
    click_on "Create Sales detail"

    assert_text "Sales detail was successfully created"
    click_on "Back"
  end

  test "updating a Sales detail" do
    visit sales_details_url
    click_on "Edit", match: :first

    fill_in "Customize cost", with: @sales_detail.customize_cost
    fill_in "Date", with: @sales_detail.date
    fill_in "Product name", with: @sales_detail.product_name
    fill_in "Sales amount", with: @sales_detail.sales_amount
    fill_in "Sd no", with: @sales_detail.sd_no
    fill_in "Use case", with: @sales_detail.use_case_id
    click_on "Update Sales detail"

    assert_text "Sales detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales detail" do
    visit sales_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales detail was successfully destroyed"
  end
end
