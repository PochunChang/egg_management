require "application_system_test_case"

class ClientInfosTest < ApplicationSystemTestCase
  setup do
    @client_info = client_infos(:one)
  end

  test "visiting the index" do
    visit client_infos_url
    assert_selector "h1", text: "Client Infos"
  end

  test "creating a Client info" do
    visit client_infos_url
    click_on "New Client Info"

    click_on "Create Client info"

    assert_text "Client info was successfully created"
    click_on "Back"
  end

  test "updating a Client info" do
    visit client_infos_url
    click_on "Edit", match: :first

    click_on "Update Client info"

    assert_text "Client info was successfully updated"
    click_on "Back"
  end

  test "destroying a Client info" do
    visit client_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client info was successfully destroyed"
  end
end
