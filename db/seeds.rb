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
  first_name: "Neenus",
  last_name: "Gabriel",
  email: "neenus@nraccounting.ca",
  password_digest: BCrypt::Password.create('asdf'),
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/boy.jpg').open,
  bio: "Neenus received an Accounting and Computer Applications Diploma from CDI College in 2007 and is currently pursuing a Bachelor of Commerce degree in Accounting with Athabasca University.
        Neenus focuses on junior audit work, review and notice to reader engagements, preparation of corporate and personal income tax returns, he is also involved in providing IT support by managing the internal firm technology and keeping the servers current."
)

sp2 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf'),
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/girl.jpg').open,
  bio: "I am proud to be the owner and a hairstylist at Confidente. I have been in the industry for 13 years now.
        I love my job because I get to make every person that sits in my chair feel great about themselves.
        I get to meet so many new people every day and everyone has a different story, wants a different look and I get to help them accomplish it.
        I LOVE to go to classes and learn the latest trends and styles and bring them back to my clients and my team.
        I am certified to do Rusk Thermal STR8 which is a permanent hair straightener. Doing a Thermal STR8 to me is one of the most
        rewarding services that I have done. It can change a person's life.
        Come in and let me or a talented member of my staff help you find your Confidente Salon & Spa. "
)

sp3 = ServiceProvider.create(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: Faker::Internet.free_email,
  password_digest: BCrypt::Password.create('asdf'),
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/girl2.jpg').open,
  bio: "Hello I can do everything and that is why I listed all kind of services on lancr contact me and I'm your go to gal!!"
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

service0 = Service.create(
  service_provider_id: sp1.id,
  title: "Tax Preparation Service",
  description: "Preparing your own income tax return can be a task that leaves you with more questions than answers. Whether its corporate or personal income tax return that you have to file; our tax team is here to help you with a single aim: to minimize your tax burden. Together, we will determine your objectives and choose a strategy tailored to your needs. We will provide sound, reliable advice and effective, profitable solutions.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/accounting-service.jpg').open,
  is_booked: false
)

service1 = Service.create(
  service_provider_id: sp2.id,
  title: "Hair Services by Confidente Salon & Spa",
  description: "Hair cut, Hair colour, Hair treatments! Specialty hair services include updo for prom and bridal, hair extensions and more",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/beauty-salon-service.jpg').open,
  is_booked: true
)

service2 = Service.create(
  service_provider_id: sp3.id,
  title: "Executive Detailing",
  description: "At Executive Detailing we take pride at providing the best car detailing process in Toronto.
                We protect and maintain your vehicle appearance with state of the art products and equipment.
                We have created a trend within the auto detailing industry through specialized and exceptional
                vehicle detailing and car cleaning services, unrivalled in high quality with a spotlight to detail.
                Our professional detailers only use the highest quality products and professional techniques to provide you with unforgettably thorough results.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/car-detailing-service.jpg').open,
  is_booked: false
)

service3 = Service.create(
  service_provider_id: sp3.id,
  title: "Sparklean",
  description: "We guarantee a fresh and clean home with the use of environmentally friendly products",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/cleaning-service.jpg').open,
  is_booked: false
)

service4 = Service.create(
  service_provider_id: sp3.id,
  title: "The Dog whisperer",
  description: "Dog boarding, drop-in visits, doggy day-care and dog walking",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/dog-walker-service.jpg').open,
  is_booked: false
)

service5 = Service.create(
  service_provider_id: sp3.id,
  title: "Pretty Pawz",
  description: "Call the professionals at Pretty Pawz located in Innisfil.
                We groom small breed dogs and have over 15 years of experience.
                Your pet will look and feel amazing! ",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/grooming-service.jpg').open,
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
  service_provider_id: sp3.id,
  title: "David's Landscaping",
  description: "With over 30 years experience, we specialize in helping clients increase the value and beauty of their homes by creating
                elegant and water wise outdoor living spaces. We create beautiful yard designs by combining seasonal color, perennials, landscaping.
                Our ultimate goal is to ensure that you are completely satisfied with the end result of your project.
                We have a reputation for excellence and unparalleled quality of service around Greater Toronto Area.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/landscaping-service.jpg').open,
  is_booked: false
)

service8 = Service.create(
  service_provider_id: sp3.id,
  title: "Healing Palms",
  description: "You want relief, relaxation, and balance in your life.Work, School, and Family obligations are taking that away,
                making it hard for you to feel at your best. Healing Palms helps restore that balance and tranquility to your busy life.
                Our team of highly trained staff will give you the best recommendations to help you feel healthier, calmer,
                and more ready to take on the challenges of everyday life. Come to our easy to reach location in Toronto
                and we'll deliver you from stressed, to balanced",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/massage-service.jpg').open,
  is_booked: false
)

service9 = Service.create(
  service_provider_id: sp3.id,
  title: "Straight North",
  description: "Formed in 1997, Straight North is a full-service Internet marketing services provider with B2B and B2C clients of all sizes.
                If your company wants to increase revenue through more online sales or a larger sales lead pipeline, we can help you succeed.
                With a large full-time, expert staff, we have the experience and talent to stand out from the crowd in the lucrative —
                but highly competitive — online marketing space",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/marketing-service.png').open,
  is_booked: false
)

service10 = Service.create(
  service_provider_id: sp3.id,
  title: "Marty's Computer Repairs",
  description: "remove viruses & malware, data recovery, new windows installs, software & hardware upgrades,
                hard drive replacement , laptop keyboard replacement, networking solutions andwireless security system",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/pc-service.jpg').open,
  is_booked: false
)

service11 = Service.create(
  service_provider_id: sp3.id,
  title: "Chris MacDonald Photography",
  description: "We love to make a difference through capturing your special moments that you will cherish for a lifetime!",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/photography-service.jpg').open,
  is_booked: true
)

service12 = Service.create(
  service_provider_id: sp3.id,
  title: "Jengo Professional Translation",
  description: "Why choose Jengo? Jengo provides excellent quality and super fast translation results
                at the most competitive rates in the industry. We have vast experience translating a wide range of content types.",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/translation-service.png').open,
  is_booked: false
)

service13 = Service.create(
  service_provider_id: sp3.id,
  title: "Jeannette Walls",
  description: "Experienced tutor and educator with PhD in Education, Master's from Harvard University with extensive experience
                teaching English language courses, writing, study skills, university applications and test preparation
                (TOEFL, IELTS, CAMBRIDGE, etc..).",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/tutoring-service.jpg').open,
  is_booked: false
)


service15 = Service.create(
  service_provider_id: sp3.id,
  title: "Finishing Touches",
  description: "Your day, your way ~ from natural to Red Carpet",
  start_time: Faker::Time.forward(10, :day),
  end_time: Faker::Time.forward(20, :day),
  price: Faker::Commerce.price,
  img: Rails.root.join('/vagrant/Final1/Lancr/public/uploads/makeup-service.jpg').open,
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