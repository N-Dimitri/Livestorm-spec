## Describe step for login page

When /^I fill my email and password"$/ do |field, string|
    fill_in("Email*", with: "testing@email.com") 
    fill_in("Mot de passe*", with: "testingpassword")
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, string|
    fill_in(field, with: string) 
end

When /^I click "([^"]*)"$/ do |input|
    click_button(input) 
end

Then /^I should see "([^"]*)"$/ do |text|
    within('div.base-form-error') do
        expect(page).to have_content(text)
    end
end

Then /^I should see in form error "([^"]*)"$/ do |text|
    within('div.form-error-message') do
        expect(page).to have_content(text)
    end
end