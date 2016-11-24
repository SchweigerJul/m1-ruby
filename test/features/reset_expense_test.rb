require 'test_helper'

class OneClickResetExpenseTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "reset expense" do
    limit = limits(:one)
    visit overview_index_path
    find_link(id: "showLimits").click
    assert page.has_content? limit.expireDate
    expense = expenses(:one)
    find_link(id: "show-#{limit.id}").click
    assert page.has_content? expense.store

    # reset expense value to zero
    find_button(id: "button-#{expense.id}").click
    # expense value should be shown on page
    assert page.has_content? expense.value
    # expense value should have zero value
    assert_not_equal 0.0, expense.value, 0.00001
  end
end
