require "application_system_test_case"

class DbInfosTest < ApplicationSystemTestCase
  setup do
    @db_info = db_infos(:one)
  end

  test "visiting the index" do
    visit db_infos_url
    assert_selector "h1", text: "Db Infos"
  end

  test "creating a Db info" do
    visit db_infos_url
    click_on "New Db Info"

    fill_in "Db info no", with: @db_info.db_info_no
    click_on "Create Db info"

    assert_text "Db info was successfully created"
    click_on "Back"
  end

  test "updating a Db info" do
    visit db_infos_url
    click_on "Edit", match: :first

    fill_in "Db info no", with: @db_info.db_info_no
    click_on "Update Db info"

    assert_text "Db info was successfully updated"
    click_on "Back"
  end

  test "destroying a Db info" do
    visit db_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Db info was successfully destroyed"
  end
end
