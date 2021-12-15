require "rails_helper"

feature "Home" do

  scenario "Should be online" do
    visit "/"
    expect(page).to have_text("My QApp")
  end
end