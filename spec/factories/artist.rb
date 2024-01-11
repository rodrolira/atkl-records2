# spec/factories/artist.rb

FactoryBot.define do
  factory :artist do
    name { Faker::Name.name }
    profession { Faker::Job.title } # Agrega un valor válido para profession
    # Otros atributos según sea necesario
  end
end
