require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe 'as logged user' do
    before do
      @user = create(:user)
    end

    it 'Route' do
      is_expected.to route(:get, '/dashboard/index').to(action: :index)
    end

    it '#index' do
      sign_in @user
      VCR.use_cassette "openweathermap/weather", record: :new_episodes do
        get :index
      end

      expect(response).to have_http_status(200)
    end
  end

end
