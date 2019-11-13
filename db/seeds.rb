require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  new_restaurants = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: 'chinese')
  new_restaurants.save!
end

puts 'Finished!'
