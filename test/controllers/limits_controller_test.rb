require 'test_helper'

class LimitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as(users(:one))
    @limit = limits(:one)
  end

  test "should get index" do
    get limits_url
    assert_response :success
  end

  test "should get new" do
    get new_limit_url
    assert_response :success
  end

  test "should create limit" do
    assert_difference('Limit.count') do
      post limits_url, params: { limit: { expireDate: @limit.expireDate, limit: @limit.limit } }
    end

    assert_redirected_to limit_expenses_url(Limit.last)
  end

  test "should show limit" do
    get limit_url(@limit)
    assert_response :success
  end

  test "should get edit" do
    get edit_limit_url(@limit)
    assert_response :success
  end

  test "should update limit" do
    patch limit_url(@limit), params: { limit: { expireDate: @limit.expireDate, limit: @limit.limit } }
    assert_redirected_to limit_expenses_url(@limit)
  end

  test "should destroy limit" do
    assert_difference('Limit.count', -1) do
      delete limit_url(@limit)
    end

    assert_redirected_to limits_url
  end
end
