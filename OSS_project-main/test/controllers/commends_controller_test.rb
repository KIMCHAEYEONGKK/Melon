require 'test_helper'

class CommendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commend = commends(:one)
  end

  test "should get index" do
    get commends_url
    assert_response :success
  end

  test "should get new" do
    get new_commend_url
    assert_response :success
  end

  test "should create commend" do
    assert_difference('Commend.count') do
      post commends_url, params: { commend: { album_id: @commend.album_id, commend: @commend.commend, user_id: @commend.user_id } }
    end

    assert_redirected_to commend_url(Commend.last)
  end

  test "should show commend" do
    get commend_url(@commend)
    assert_response :success
  end

  test "should get edit" do
    get edit_commend_url(@commend)
    assert_response :success
  end

  test "should update commend" do
    patch commend_url(@commend), params: { commend: { album_id: @commend.album_id, commend: @commend.commend, user_id: @commend.user_id } }
    assert_redirected_to commend_url(@commend)
  end

  test "should destroy commend" do
    assert_difference('Commend.count', -1) do
      delete commend_url(@commend)
    end

    assert_redirected_to commends_url
  end
end
