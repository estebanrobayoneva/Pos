class Product < ApplicationRecord
  belongs_to :category
  has_many :detail_purchase_receipts
  has_many :details
  belongs_to :user
end
