class AddPurchaseReceiptIdToDetailPurchaseReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :detail_purchase_receipts, :purchase_receipts_id, :integer
  end
end
