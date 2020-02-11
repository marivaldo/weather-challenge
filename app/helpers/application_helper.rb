module ApplicationHelper

  def fahrenheit_to_celsius(fahrenheit)
    ((fahrenheit - 32) / 1.8).round(2)
  rescue StandardError => e
    "Error to convert fahrenheit to celsius. Details: #{e.message}"
  end

end
