require 'test_helper'

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as(users(:one))
    @limit = limits(:one)
    @expense = expenses(:one)
  end

  test "should get index" do
    get limit_expenses_url(@limit)
    assert_response :success
  end

  test "should get new" do
	output = @limit.id
	p output
    get new_limit_expense_path(@limit.id)
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post limit_expenses_url(@limit), params: { expense: { date: @expense.date, description: @expense.description, store: @expense.store, value: @expense.value } }
    end

    assert_redirected_to limit_expenses_url(@limit)
  end

  test "should show expense" do
    get limit_expense_url(@limit, @expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_limit_expense_url(@limit, @expense)
    assert_response :success
  end

  test "should update expense" do
    patch limit_expense_url(@limit, @expense), params: { expense: { date: @expense.date, description: @expense.description, store: @expense.store, value: @expense.value } }
    assert_redirected_to limit_expenses_url(@limit)
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete limit_expense_url(@limit, @expense)
    end

    assert_redirected_to limit_expenses_url(@limit)
  end
end
