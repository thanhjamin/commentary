require "test_helper"

feature "vistor visiting the post index" do
  scenario "vistor visits existing posts" do
    # Given existing posts
    visit comments_path

    # Then the existing posts should be loaded
    page.text.must_include 'Comments'

  end
end