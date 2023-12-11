require 'test_helper'

class PlayListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @play_list = play_lists(:one)
  end

  test "should get index" do
    get play_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_play_list_url
    assert_response :success
  end

  test "should create play_list" do
    assert_difference('PlayList.count') do
      post play_lists_url, params: { play_list: { track_id: @play_list.track_id, user_id: @play_list.user_id } }
    end

    assert_redirected_to play_list_url(PlayList.last)
  end

  test "should show play_list" do
    get play_list_url(@play_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_play_list_url(@play_list)
    assert_response :success
  end

  test "should update play_list" do
    patch play_list_url(@play_list), params: { play_list: { track_id: @play_list.track_id, user_id: @play_list.user_id } }
    assert_redirected_to play_list_url(@play_list)
  end

  test "should destroy play_list" do
    assert_difference('PlayList.count', -1) do
      delete play_list_url(@play_list)
    end

    assert_redirected_to play_lists_url
  end
end
