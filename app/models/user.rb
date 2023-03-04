class User < ApplicationRecord
  attr_accessor :dob

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :interests
  has_many :categories, through: :interests
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :messages
end
