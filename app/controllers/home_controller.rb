class HomeController < ApplicationController
  def index
    @weather = TemperatureService.get_weather(params[:city] ? params[:city] : 'Sao Paulo, BR')
  end
end
