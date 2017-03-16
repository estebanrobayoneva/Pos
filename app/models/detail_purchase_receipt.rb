class DetailPurchaseReceipt < ApplicationRecord
  belongs_to :purchase_receipt
  belongs_to :product
end
