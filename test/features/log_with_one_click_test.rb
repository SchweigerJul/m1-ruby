require 'test_helper'

class OneClickLogTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "log habit without any logs yet" do
    limit = limits(:one)

    visit overview_index_path

    find_link(id: "showLimits").click
	
    assert page.has_content? limit.expireDate

    expense = expenses(:one)
	
    find_link(id: "show-#{expense.limit_id}").click
	
    assert page.has_content? expense.store
	
  end
end
