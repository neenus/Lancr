# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# service_provider seed
puts "Seeding DataBase ....."
puts "Seeding service providers"



sp1 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

sp2 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

sp3 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

# customers seed
puts "Seeding customers"


customer1 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

customer2 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

customer3 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email
)

# Services seeds
puts "Seeding services"


service1 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open
)

service2 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open
)

# Booking seeds
puts "Seeding booking"


booking1 = Booking.create(
  customer_id: 1,
  service_id: 1
)
booking2 = Booking.create(
  customer_id: 1,
  service_id: 2
)
booking3 = Booking.create(
  customer_id: 1,
  service_id: 3
)

puts "Seeding completed ....."