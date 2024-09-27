require_relative '../lib/pages/main_page'
require_relative '../lib/helpers/base_page'
require_relative '../lib/pages/search_result_page'

Given(/^I'm on a Main page$/) do
  @main_page = MainPage.new(@driver)
end

When(/^I input (.*) on search field and submit search$/) do |input|
  @main_page.search_item(input)
  @search_page = SearchResultPage.new(@driver)
end

Then(/^Search results should be shown/) do
  search_result = @search_page.get_search_result
end