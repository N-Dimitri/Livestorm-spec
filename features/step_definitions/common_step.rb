# describe step for global usage

Given /I visit "([^"]*)"$/ do |url|
    visit(url)
end

When /^I click "([^"]*)"$/ do |input|
    click_on(input) 
end

When /^I click button "([^"]*)"$/ do |input|
    click_button(input) 
end