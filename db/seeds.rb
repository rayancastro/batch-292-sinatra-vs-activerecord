require 'faker'

puts "Generating restaurants"

CATEGORIES = ['Burgao', 'Pe Efão', 'Saladinha']

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: CATEGORIES.sample
  )
end



puts "You have #{Restaurant.count} restaurants"
