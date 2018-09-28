# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# service_provider seed
puts "Seeding DataBase ....."

ServiceProvider.destroy_all

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

services1 = Service.create(
  title: "Lawn Mowing",
  description: "I will come to your house and mow your lawn",
  start_time: DateTime.new(2018,10,11,12,00),
  end_time: DateTime.new(2018,10,11,13,00),
  price: 10,
  img: '/uploads/img/1/lawn.jpg'
  )


service2 = Service.create(
  title: "Hair Salon Apt",
  description: "You can come down to my award winning new hair salon and get a fresh cut.",
  start_time: DateTime.new(2018,10,11,3,00),
  end_time: DateTime.new(2018,10,11,5,00),
  price: 30,
  img: '/uploads/img/2/hair.jpg'
  )

service3 = Service.create(
  title: "Cooking lesson",
  description: "I'm and expert baker who loves to pass on my recipes, lets meet up and I'll teach you how to make something delicious.",
  start_time: DateTime.new(2018,11,16,16,00),
  end_time: DateTime.new(2018,11,16,18,00),
  price: 25,
  img:'/uploads/img/3/<cook></cook>.jpg'
  )

puts "Seeding completed ....."