class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :nickname, presence: true
  validates :address, presence: true
  validates :dob, presence: true
  validates :bio, presence: true
  validates :gender, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :interests
  has_many :categories, through: :interests
  has_many :messages
end
