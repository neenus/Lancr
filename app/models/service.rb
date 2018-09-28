class Service < ApplicationRecord

  belongs_to :service_provider
  has_many :bookings
  has_many( :customers, {through: :bookings})

  
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :price, presence: true
  validate :end_must_be_after_start
  validate :start_must_be_after_present

  mount_uploader :img, ImgUploader

  def end_must_be_after_start
    if start_time.present? && end_time.present? && start_time >= end_time
      errors.add(:end_time, "must be after start time")
    end
  end

  def start_must_be_after_present
    if start_time.present? && start_time.to_date.past?
      errors.add(:start_time, "The start time has to be in the future!")
    end
  end


end

