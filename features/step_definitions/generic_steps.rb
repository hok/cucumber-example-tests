Given(/^the user is on the TV reviews page$/) do
  tv_page.load
  expect(tv_page).to be_displayed
end

Then(/^they should see a list of televisions$/) do
  expect(tv_page.tv_list.tvs.size).to be > 5
end

When(/^the user selects a TV for comparison$/) do
  tv_page.tv_list.tvs.first.add_to_compare.click
end

Then(/^the TV is added to the comparison tool$/) do
  tv_page.comparison_tool.wait_for_products
  expect(tv_page.comparison_tool.products.size).to eql 1
end

When(/^the user selects to see more filter criteria for "([^"]*)"$/) do |type|
  facet = tv_page.search_filters.facet(type)
  facet.toggle_all.click
end

Then(/^the number of available options for "([^"]*)" has increased$/) do |type|
  facet = tv_page.search_filters.facet(type)
  expect(facet.options.size).to be > 6
end

When(/^the user filters the TVs by brand$/) do
  facet = tv_page.search_filters.facet('brands')
  facet.option_label.first.click
end

Then(/^all listed TVs are of the same brand$/) do
  wait_for { !tv_page.data_loading? }

  brand = tv_page.tv_list.tvs.first.manufacturer.text
  same_brand = tv_page.tv_list.tvs.all? { |tv| tv.manufacturer.text == brand }
  expect(same_brand).to be true
end

When(/^the user sorts the TVs by "([^"]*)"$/) do |criteria|
  tv_page.sort_by.select(criteria)
end

Then(/^the TV list is sorted by "([^"]*)"$/) do |_criteria|
  # TODO: implement different sorting criteria assertions
  wait_for { !tv_page.data_loading? }

  order_on_page = tv_page.tv_list.tvs.collect(&:price)
  correct_order = order_on_page.sort
  expect(order_on_page).to eql correct_order
end
