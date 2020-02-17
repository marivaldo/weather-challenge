describe 'HTTParty' do
  it 'Test response openweather2', vcr: { cassette_name: 'openweathermap/weather', record: :new_episodes } do
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?APPID=3af12266e2913e9347cee2db36b37fe3&q=Sao%20Paulo,%20BR&units=imperial')
    content_type = response.headers['content-type']
    expect(content_type).to match(%r{application/json})
  end
end
