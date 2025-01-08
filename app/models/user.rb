class User < ApplicationRecord
  has_many :favorites
  has_many :my_festivals
  has_many :festivals, through: :favorites
  has_many :festivals, through: :my_festivals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :phone_number, format: { with: /\A\d{10}\z/, message: "must be exactly 10 digits" }
end
