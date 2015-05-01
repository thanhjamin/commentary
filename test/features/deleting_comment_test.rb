require "test_helper"

feature "Deleting a comment" do
  scenario "Delete existing comment" do
    visit comments_path
    click_link("Delete", href: "/comments/#{comments(:one).id}")
    page.text.wont_include 'MyTexy'
    page.text.wont_include 'John Doe'
  end
end