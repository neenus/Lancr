class Customer < ApplicationRecord

  has_many :bookings
  has_many(:services, {through: :bookings})

  # validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true 
  has_secure_password
  validates_uniqueness_of :email

end
