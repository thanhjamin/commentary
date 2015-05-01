require "test_helper"

feature "creating a comment" do
  scenario "works with valid data" do

#Given a completed post form
  visit new_comment_path

  fill_in 'Full Name', with: comments(:one).title
  fill_in 'Email', with: comments(:one).body
  fill_in 'Comment', with: comments(:one).body

#When I submit the form
  click_on 'Save'

#And a success message
    page.text.must_include "Comment was successfully created"
    page.text.must_include comments(:one).comment
    page.text.must_include comments(:one).email
    page.text.must_include comments(:one).full_name
  end
end