require 'test_helper'

class TriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @try = tries(:one)
  end

  test "should get index" do
    get tries_url
    assert_response :success
  end

  test "should get new" do
    get new_try_url
    assert_response :success
  end

  test "should create try" do
    assert_difference('Try.count') do
      post tries_url, params: { try: { try: @try.try } }
    end

    assert_redirected_to try_url(Try.last)
  end

  test "should show try" do
    get try_url(@try)
    assert_response :success
  end

  test "should get edit" do
    get edit_try_url(@try)
    assert_response :success
  end

  test "should update try" do
    patch try_url(@try), params: { try: { try: @try.try } }
    assert_redirected_to try_url(@try)
  end

  test "should destroy try" do
    assert_difference('Try.count', -1) do
      delete try_url(@try)
    end

    assert_redirected_to tries_url
  end
end
