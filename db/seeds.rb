# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'seeding the DB'


services1 = Service.create(
  title: "Lawn Mowing",
  description: "I will come to your house and mow your lawn",
  start_time: DateTime.new(2018,10,11,12,00),
  end_time: DateTime.new(2018,10,11,13,00)
)


service2 = Service.create(
  title: "Hair Salon Apt",
  description: "You can come down to my award winning new hair salon and get a fresh cut.",
  start_time: DateTime.new(2018,10,11,3,00),
  end_time: DateTime.new(2018,10,11,5,00)
)

service3 = Service.create(
  title: "Cooking lesson",
  description: "I'm and expert baker who loves to pass on my recipes, lets meet up and I'll teach you how to make something delicious.",
  start_time: DateTime.new(2018,11,16,16,00),
  end_time: DateTime.new(2018,11,16,18,00)
)