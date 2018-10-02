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
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
)

sp2 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
)

sp3 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
)

# customers seed
puts "Seeding customers"

customer1 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
)

customer2 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
)

customer3 = Customer.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf')
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

  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,


  is_booked: true
)

service2 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service3 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service4 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service5 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service6 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service7 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service8 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service9 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service10 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service11 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: true
)

service12 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service13 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service14 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service15 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service16 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service17 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service18 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service19 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
  is_booked: false
)

service20 = Service.create(
  service_provider_id: sp1.id,
  title: Faker::Job.title,
  description: Faker::Lorem.paragraph,
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,

  is_booked: false
)

# Booking seeds
puts "Seeding booking"


booking1 = Booking.create(
  customer_id: 1,
  service_id: 1
)
# booking2 = Booking.create(
#   customer_id: 1,
#   service_id: 2
# )
# booking3 = Booking.create(
#   customer_id: 1,
#   service_id: 3
# )


puts "Seeding completed ....."