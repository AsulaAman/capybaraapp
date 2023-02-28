class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :interests
  # methods we get: user.interests, user.interests << ()
  has_many :categories, through: :interests
  # user.categories
  # To inspect: User.has_many(:categories, through: :interests)
end
