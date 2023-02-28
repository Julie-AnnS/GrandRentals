class Grandparent < ApplicationRecord
  belongs_to :user
  # has_many :bookings
  # has_many :reviews

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name,  presence: true, length: { minimum: 2 }
  validates :age, presence: true, numericality: true
  validates :abilities, presence: true, length: { maximum: 500 }
  validates :contradictions, presence: true, length: { maximum: 500 }
  validates :language, presence: true
  validates :available, inclusion: [true, false]

end
