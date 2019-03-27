require "application_system_test_case"

class HardInfosTest < ApplicationSystemTestCase
  setup do
    @hard_info = hard_infos(:one)
  end

  test "visiting the index" do
    visit hard_infos_url
    assert_selector "h1", text: "Hard Infos"
  end

  test "creating a Hard info" do
    visit hard_infos_url
    click_on "New Hard Info"

    fill_in "Usecase", with: @hard_info.UseCase_id
    fill_in "Address", with: @hard_info.address
    fill_in "Connection current", with: @hard_info.connection_current
    fill_in "Connection max", with: @hard_info.connection_max
    fill_in "Fax", with: @hard_info.fax
    fill_in "Hard no", with: @hard_info.hard_no
    fill_in "Memo", with: @hard_info.memo
    fill_in "Store name", with: @hard_info.store_name
    fill_in "Tel", with: @hard_info.tel
    fill_in "Worker name", with: @hard_info.worker_name
    click_on "Create Hard info"

    assert_text "Hard info was successfully created"
    click_on "Back"
  end

  test "updating a Hard info" do
    visit hard_infos_url
    click_on "Edit", match: :first

    fill_in "Usecase", with: @hard_info.UseCase_id
    fill_in "Address", with: @hard_info.address
    fill_in "Connection current", with: @hard_info.connection_current
    fill_in "Connection max", with: @hard_info.connection_max
    fill_in "Fax", with: @hard_info.fax
    fill_in "Hard no", with: @hard_info.hard_no
    fill_in "Memo", with: @hard_info.memo
    fill_in "Store name", with: @hard_info.store_name
    fill_in "Tel", with: @hard_info.tel
    fill_in "Worker name", with: @hard_info.worker_name
    click_on "Update Hard info"

    assert_text "Hard info was successfully updated"
    click_on "Back"
  end

  test "destroying a Hard info" do
    visit hard_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hard info was successfully destroyed"
  end
end
