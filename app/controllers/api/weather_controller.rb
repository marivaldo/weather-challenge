# frozen_string_literal: true

# Module API
module Api
  # Class weather controller
  class WeatherController < ActionController::API
    def index
      @weather = Openweather2.get_weather(city: 'São Paulo, Brazil', units: 'imperial')
      render json: @weather
    end
  end
end
