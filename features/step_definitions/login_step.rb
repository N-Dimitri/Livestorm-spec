require 'dotenv'
Dotenv.load

## Describe step for login page

When /^I fill my email and password$/ do
    fill_in("Email*", with: ENV['EMAIL']) 
    fill_in("Mot de passe*", with: ENV['PASSWORD'])
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, string|
    fill_in(field, with: string) 
end


Then /^I should see "([^"]*)"$/ do |text|
    within('div.base-form-error') do
        expect(page).to have_content(text)
    end
end

Then /^I should see in form validation "([^"]*)"$/ do |text|
    within('div.form-error-message') do
        expect(page).to have_content(text)
    end
end

Then /^I am to the login page$/ do
    expect(page).to have_css("div.sign-in")
end
