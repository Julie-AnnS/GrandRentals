class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :grandparent, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :language, presence: true
  validates :location, presence: true
  validates :phone_number, presence: true
end
