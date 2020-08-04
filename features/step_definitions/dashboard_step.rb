require 'dotenv'
Dotenv.load

## Describe step for dashboard page

Then /^I am connected to the dashboard$/ do
    within('div.secondary-info') do
        expect(page).to have_content(ENV['EMAIL'])
    end
end