class ServiceProvider < ApplicationRecord

  has_many :services

  #validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true 
  has_secure_password
  validates_uniqueness_of :email
end
