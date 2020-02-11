class DashboardController < ApplicationController
  def index
    @weather = Openweather2.get_weather(city: 'São Paulo, Brazil', units: 'imperial')
  end
end
