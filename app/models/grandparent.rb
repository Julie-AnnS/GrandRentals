class Grandparent < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # has_many :reviews

  validates :name, presence: true, length: { minimum: 2 }
  validates :age, presence: true, numericality: true
  validates :abilities, presence: true, length: { maximum: 500 }
  validates :limitations, presence: true, length: { maximum: 500 }
  validates :language, presence: true
  validates :daily_rate, presence: true, numericality: true
  validates :location, presence: true
  validates :phone_number, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
