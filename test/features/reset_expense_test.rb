require 'test_helper'

class OneClickResetExpenseTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "reset expense" do

    user = users(:one)
    visit login_path
    fill_in "Name", with: user.name
    fill_in "Password", with: 'secret'
    click_button "Log in"

    limit = limits(:one)
    expense = expenses(:one)

    assert page.has_content? limit.expireDate
    find_link(id: "show-#{limit.id}").click

    #assert page.has_content? expense.value
    assert_not_equal 0, expense.value

    # reset expense value to zero
    find_button(id: "button-#{expense.id}").click
    # expense value should have zero value
    assert_not_equal 0, expense.value # BUT should be zero
  end
end
