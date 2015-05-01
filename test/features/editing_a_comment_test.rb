require "test_helper"

feature "Editing Comment" do
  scenario "Update comment" do
    visit comment_path(comments(:one))
    click_on 'Edit'
    fill_in 'Full name', with: 'Jane Doe'
    fill_in 'Email', with: 'JaneDoe@gmail.com'
    fill_in 'New Comment', with: 'Death star is almost complete'
    click_on 'Save'
    page.text.must_include 'Jane Doe'
    page.text.must_include 'Death star is almost complete'
    page.text.must_include 'Comment was successfully updated.'
  end
end