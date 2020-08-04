## Describe step for login page

When /^I fill my email and password"$/ do |field, string|
    fill_in("Email*", with: "testing@email.com") 
    fill_in("Mot de passe*", with: "testingpassword")
end


When /^I click "([^"]*)"$/ do |input|
    click_button(input) 
end
