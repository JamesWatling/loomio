When /^I visit the settings page$/ do
  visit "/settings"
end

When /^I enter my desired name$/ do
  fill_in 'user_name', with: "new_username"
end

Then /^my name should be changed$/ do
  User.where(:name => "new_username")
end

When /^I enter my current name$/ do
  fill_in "user_name", with: "furry"
end

Then /^my name should stay the same$/ do
  User.where(:name=> "new_username").size ==1
end

Then /^my name should not be changed$/ do
  not User.where(:name => "new_username")
end