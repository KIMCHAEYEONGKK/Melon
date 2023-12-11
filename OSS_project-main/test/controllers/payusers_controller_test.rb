require 'test_helper'

class PayusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payuser = payusers(:one)
  end

  test "should get index" do
    get payusers_url
    assert_response :success
  end

  test "should get new" do
    get new_payuser_url
    assert_response :success
  end

  test "should create payuser" do
    assert_difference('Payuser.count') do
      post payusers_url, params: { payuser: { user_id: @payuser.user_id } }
    end

    assert_redirected_to payuser_url(Payuser.last)
  end

  test "should show payuser" do
    get payuser_url(@payuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_payuser_url(@payuser)
    assert_response :success
  end

  test "should update payuser" do
    patch payuser_url(@payuser), params: { payuser: { user_id: @payuser.user_id } }
    assert_redirected_to payuser_url(@payuser)
  end

  test "should destroy payuser" do
    assert_difference('Payuser.count', -1) do
      delete payuser_url(@payuser)
    end

    assert_redirected_to payusers_url
  end
end
