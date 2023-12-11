require "application_system_test_case"

class PayusersTest < ApplicationSystemTestCase
  setup do
    @payuser = payusers(:one)
  end

  test "visiting the index" do
    visit payusers_url
    assert_selector "h1", text: "Payusers"
  end

  test "creating a Payuser" do
    visit payusers_url
    click_on "New Payuser"

    fill_in "User", with: @payuser.user_id
    click_on "Create Payuser"

    assert_text "Payuser was successfully created"
    click_on "Back"
  end

  test "updating a Payuser" do
    visit payusers_url
    click_on "Edit", match: :first

    fill_in "User", with: @payuser.user_id
    click_on "Update Payuser"

    assert_text "Payuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Payuser" do
    visit payusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payuser was successfully destroyed"
  end
end
