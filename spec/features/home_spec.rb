require 'rails_helper'

feature 'Home', type: :feature do
  scenario 'Show weather temperature in Home' do
    visit root_path
    expect(page).to have_content('Weather')
  end
end