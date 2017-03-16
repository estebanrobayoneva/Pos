class Category < ApplicationRecord
  has_many :discounts
  has_many :societies, through: :discounts
  has_many :products
  belongs_to :user
end
