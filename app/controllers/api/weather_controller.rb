# frozen_string_literal: true

# Module API
module Api
  # Class weather controller
  class WeatherController < ActionController::API

    def index
      @weather = TemperatureService.get_weather(params[:city])
      render json: @weather
    end

  end
end
