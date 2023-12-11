require "application_system_test_case"

class PlayListsTest < ApplicationSystemTestCase
  setup do
    @play_list = play_lists(:one)
  end

  test "visiting the index" do
    visit play_lists_url
    assert_selector "h1", text: "Play Lists"
  end

  test "creating a Play list" do
    visit play_lists_url
    click_on "New Play List"

    fill_in "Track", with: @play_list.track_id
    fill_in "User", with: @play_list.user_id
    click_on "Create Play list"

    assert_text "Play list was successfully created"
    click_on "Back"
  end

  test "updating a Play list" do
    visit play_lists_url
    click_on "Edit", match: :first

    fill_in "Track", with: @play_list.track_id
    fill_in "User", with: @play_list.user_id
    click_on "Update Play list"

    assert_text "Play list was successfully updated"
    click_on "Back"
  end

  test "destroying a Play list" do
    visit play_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Play list was successfully destroyed"
  end
end
