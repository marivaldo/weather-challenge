class DashboardController < RestrictController
  def index
    @weather = TemperatureService.get_weather(params[:city] ? params[:city] : 'Sao Paulo, BR')
    @cities = City.where(user: current_user)
  end
end
