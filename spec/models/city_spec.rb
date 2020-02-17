require 'rails_helper'

RSpec.describe City, type: :model do
  it '#create' do
    city = create(:city, name: 'Sao Paulo,BR')
    expect(city.name).to eq('Sao Paulo,BR')
  end
end
