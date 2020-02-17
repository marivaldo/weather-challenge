# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'api', type: :request do
  describe 'GET /weather' do
    it "city response" do
      user = create(:user)
      login_as(user, scope: :user)
      VCR.use_cassette "openweathermap/weather", record: :new_episodes do
        get '/api/weather', params: { city: 'Sao Paulo,BR' }
      end
      expect(response.body).to include_json(
        "city": (be_kind_of String)
      )
    end
  end
end
