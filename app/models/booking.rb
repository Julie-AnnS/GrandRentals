class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grandparent

  validates :price, presence:true
  validates :start_date, presence:true
  validates :end_date, presence:true

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2
  }
end
