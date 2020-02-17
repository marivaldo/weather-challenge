require 'rails_helper'

feature 'Home', type: :feature do
  scenario 'Show weather temperature in Home' do
    VCR.use_cassette "openweathermap/weather", record: :new_episodes do
      visit root_path
    end
    expect(page).to have_content('Weather')
  end
end