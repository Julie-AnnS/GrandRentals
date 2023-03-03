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

  include PgSearch::Model
  pg_search_scope :search_by_name_age_abilities_language_location,
  against: [ :name, :age, :abilities, :language, :location ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
