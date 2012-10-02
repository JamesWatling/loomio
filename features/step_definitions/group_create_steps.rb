When /^I click create group$/ do
  visit "/groups/new"
end

When /^I fill in the group details$/ do
  FactoryGirl.create :user, :email => "contact@loom.io"
  fill_in 'group-name', with: "New Test Group"
  click_on 'update-group'
end

Given /^a group is created$/ do
  visit "/groups/new"
  fill_in 'group-name', with: "New Test Group"
  click_on 'update-group'
end

When /^I select public, open invite$/ do
  choose 'group_viewable_by_everyone'
  choose 'group_members_invitable_by_members'
end

When /^I select private, open invite$/ do
  choose 'group_viewable_by_members'
  choose 'group_members_invitable_by_members'
end

When /^I select public, member\-only$/ do
  choose 'group_viewable_by_everyone'
  choose 'group_members_invitable_by_admins'
end

When /^I select private, member\-only$/ do
  choose 'group_viewable_by_members'
  choose 'group_members_invitable_by_admins'
end

Then /^a new group should be created$/ do
  Group.where(:name=>"New Test Group").should exist
end
