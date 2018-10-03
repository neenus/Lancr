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
  title: "Hair Services by Confidente Salon & Spa",
  description: "Hair cut, Hair colour, Hair treatments! Specialty hair services include updo for prom and bridal, hair extensions and more",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/beauty-salon-service.jpg').open,
  is_booked: true
)

service2 = Service.create(
  service_provider_id: sp1.id,
  title: "Executive Detailing",
  description: "At Executive Detailing we take pride at providing the best car detailing process in Toronto.
                We protect and maintain your vehicle appearance with state of the art products and equipment.
                We have created a trend within the auto detailing industry through specialized and exceptional
                vehicle detailing and car cleaning services, unrivalled in high quality with a spotlight to detail.
                Our professional detailers only use the highest quality products and professional techniques to provide you with unforgettably thorough results.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/car-detailing-service.jpg').open,
  is_booked: false
)

service3 = Service.create(
  service_provider_id: sp1.id,
  title: "Sparklean",
  description: "We guarantee a fresh and clean home with the use of environmentally friendly products",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/cleaning-service.jpg').open,
  is_booked: false
)

service4 = Service.create(
  service_provider_id: sp1.id,
  title: "The Dog whisperer",
  description: "Dog boarding, drop-in visits, doggy day-care and dog walking",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/dog-walker-service.jpg').open,
  is_booked: false
)

service5 = Service.create(
  service_provider_id: sp1.id,
  title: "Pretty Pawz",
  description: "Call the professionals at Pretty Pawz located in Innisfil.
                We groom small breed dogs and have over 15 years of experience.
                Your pet will look and feel amazing! ",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/grooming-service.jpg').open,
  is_booked: false
)

# service6 = Service.create(
#   service_provider_id: sp1.id,
#   title: "Nadia's Aesthetics",
#   description: "With over 10 yeast of a hands-on experience in body waxing, facial treatments and
#                 body treatments you may be sure that you'll have a positive and pleasant experience.
#                 Getting yourself a personal esthetician has never been so easy. Call now to book your appointment!",
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/hairdresser-service.jpg').open,
#   is_booked: false
# )

service7 = Service.create(
  service_provider_id: sp1.id,
  title: "David's Landscaping",
  description: "With over 30 years experience, we specialize in helping clients increase the value and beauty of their homes by creating
                elegant and water wise outdoor living spaces. We create beautiful yard designs by combining seasonal color, perennials, landscaping.
                Our ultimate goal is to ensure that you are completely satisfied with the end result of your project.
                We have a reputation for excellence and unparalleled quality of service around Greater Toronto Area.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/landscaping-service.jpg').open,
  is_booked: false
)

service8 = Service.create(
  service_provider_id: sp1.id,
  title: "Healing Palms",
  description: "You want relief, relaxation, and balance in your life.Work, School, and Family obligations are taking that away,
                making it hard for you to feel at your best. Healing Palms helps restore that balance and tranquility to your busy life.
                Our team of highly trained staff will give you the best recommendations to help you feel healthier, calmer,
                and more ready to take on the challenges of everyday life. Come to our easy to reach location in Toronto
                and we'll deliver you from stressed, to balanced",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/massage-service.jpg').open,
  is_booked: false
)

service9 = Service.create(
  service_provider_id: sp1.id,
  title: "Straight North",
  description: "Formed in 1997, Straight North is a full-service Internet marketing services provider with B2B and B2C clients of all sizes.
                If your company wants to increase revenue through more online sales or a larger sales lead pipeline, we can help you succeed.
                With a large full-time, expert staff, we have the experience and talent to stand out from the crowd in the lucrative —
                but highly competitive — online marketing space",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/marketing-service.png').open,
  is_booked: false
)

service10 = Service.create(
  service_provider_id: sp1.id,
  title: "Marty's Computer Repairs",
  description: "remove viruses & malware, data recovery, new windows installs, software & hardware upgrades,
                hard drive replacement , laptop keyboard replacement, networking solutions andwireless security system",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/pc-service.jpg').open,
  is_booked: false
)

service11 = Service.create(
  service_provider_id: sp1.id,
  title: "Chris MacDonald Photography",
  description: "We love to make a difference through capturing your special moments that you will cherish for a lifetime!",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/photography-service.jpg').open,
  is_booked: true
)

service12 = Service.create(
  service_provider_id: sp1.id,
  title: "Jengo Professional Translation",
  description: "Why choose Jengo? Jengo provides excellent quality and super fast translation results
                at the most competitive rates in the industry. We have vast experience translating a wide range of content types.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/translation-service.png').open,
  is_booked: false
)

service13 = Service.create(
  service_provider_id: sp1.id,
  title: "Jeannette Walls",
  description: "Experienced tutor and educator with PhD in Education, Master's from Harvard University with extensive experience
                teaching English language courses, writing, study skills, university applications and test preparation
                (TOEFL, IELTS, CAMBRIDGE, etc..).",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/tutoring-service.jpg').open,
  is_booked: false
)

service14 = Service.create(
  service_provider_id: sp1.id,
  title: "Whoof Whoof",
  description: "Whoof Whoof Whof??! Whof Whoof Whooof",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/dog-massage-service.jpg').open,
  is_booked: false
)

service15 = Service.create(
  service_provider_id: sp1.id,
  title: "Finishing Touches",
  description: "Your day, your way ~ from natural to Red Carpet",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/lancrFinal/public/uploads/makeup-service.jpg').open,
  is_booked: false
)

# service16 = Service.create(
#   service_provider_id: sp1.id,
#   title: Faker::Job.title,
#   description: Faker::Lorem.paragraph,
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
#   is_booked: false
# )

# service17 = Service.create(
#   service_provider_id: sp1.id,
#   title: Faker::Job.title,
#   description: Faker::Lorem.paragraph,
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
#   is_booked: false
# )

# service18 = Service.create(
#   service_provider_id: sp1.id,
#   title: Faker::Job.title,
#   description: Faker::Lorem.paragraph,
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
#   is_booked: false
# )

# service19 = Service.create(
#   service_provider_id: sp1.id,
#   title: Faker::Job.title,
#   description: Faker::Lorem.paragraph,
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
#   is_booked: false
# )

# service20 = Service.create(
#   service_provider_id: sp1.id,
#   title: Faker::Job.title,
#   description: Faker::Lorem.paragraph,
#   start_time: Faker::Time.forward(10, :day),
#   end_time: Faker::Time.forward(20, :day),
#   price: Faker::Commerce.price,
#   img: Rails.root.join('/vagrant/projects/lancr/public/uploads/lawn.jpg').open,
#   is_booked: false
# )

# Booking seeds
puts "Seeding booking"


# booking1 = Booking.create(
#   customer_id: 1,
#   service_id: 1
# )
# booking2 = Booking.create(
#   customer_id: 1,
#   service_id: 2
# )
# booking3 = Booking.create(
#   customer_id: 1,
#   service_id: 3
# )


puts "Seeding completed ....."