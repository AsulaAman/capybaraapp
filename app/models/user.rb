class User < ApplicationRecord
  acts_as_favoritable
  acts_as_favoritor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :bio, presence: true
  validates :gender, presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :interests
  has_many :categories, through: :interests
  has_many :messages
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
