class Category < ApplicationRecord
  has_many :interests
  belongs_to :user
end
