require "application_system_test_case"

class CommendsTest < ApplicationSystemTestCase
  setup do
    @commend = commends(:one)
  end

  test "visiting the index" do
    visit commends_url
    assert_selector "h1", text: "Commends"
  end

  test "creating a Commend" do
    visit commends_url
    click_on "New Commend"

    fill_in "Album", with: @commend.album_id
    fill_in "Commend", with: @commend.commend
    fill_in "User", with: @commend.user_id
    click_on "Create Commend"

    assert_text "Commend was successfully created"
    click_on "Back"
  end

  test "updating a Commend" do
    visit commends_url
    click_on "Edit", match: :first

    fill_in "Album", with: @commend.album_id
    fill_in "Commend", with: @commend.commend
    fill_in "User", with: @commend.user_id
    click_on "Update Commend"

    assert_text "Commend was successfully updated"
    click_on "Back"
  end

  test "destroying a Commend" do
    visit commends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commend was successfully destroyed"
  end
end
