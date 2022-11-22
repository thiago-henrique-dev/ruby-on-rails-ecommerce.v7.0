FactoryBot.define do
  factory :category do
    name { Faker::Name.name}
    position = Faker::Number.number(digits: 10)
  end
end
