class Detail < ApplicationRecord
  belongs_to :receipt
  belongs_to :product
  belongs_to :user
end
