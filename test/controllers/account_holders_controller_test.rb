require 'test_helper'

class AccountHoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_holder = account_holders(:one)
  end

  test "should get index" do
    get account_holders_url
    assert_response :success
  end

  test "should get new" do
    get new_account_holder_url
    assert_response :success
  end

  test "should create account_holder" do
    assert_difference('AccountHolder.count') do
      post account_holders_url, params: { account_holder: {  } }
    end

    assert_redirected_to account_holder_url(AccountHolder.last)
  end

  test "should show account_holder" do
    get account_holder_url(@account_holder)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_holder_url(@account_holder)
    assert_response :success
  end

  test "should update account_holder" do
    patch account_holder_url(@account_holder), params: { account_holder: {  } }
    assert_redirected_to account_holder_url(@account_holder)
  end

  test "should destroy account_holder" do
    assert_difference('AccountHolder.count', -1) do
      delete account_holder_url(@account_holder)
    end

    assert_redirected_to account_holders_url
  end
end
