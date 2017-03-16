class Provider < ApplicationRecord
    has_many :purchase_receipts
    belongs_to :user
end
