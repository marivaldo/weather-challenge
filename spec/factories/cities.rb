FactoryBot.define do
  factory :city do
    user
    name {Faker::Address.city}
  end
end
