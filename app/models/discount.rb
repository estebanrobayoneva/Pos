class Discount < ApplicationRecord
  belongs_to :society
  belongs_to :category
  belongs_to :user
end
