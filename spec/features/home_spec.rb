require "rails_helper"

feature "Home" do

  before do
    visit "/"
  end

  scenario "Capybara should use rack_test driver as default"  do
    expect(Capybara.current_driver).to eq(:rack_test)
  end

  scenario "Capybara should use firefox driver", driver: :firefox do
    expect(Capybara.current_driver).to eq(:firefox)
  end

end