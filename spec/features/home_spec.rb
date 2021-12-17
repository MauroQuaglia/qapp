require "rails_helper"

feature "Home" do

  scenario "Capybara should use rack_test driver as default" do
    visit "/"
    expect(Capybara.current_driver).to eq(:rack_test)
  end

  scenario "Capybara should use rack_test driver as default 2", js: true do
    visit "/"
    expect(Capybara.current_driver).to eq(:rack_test)
  end
  
end