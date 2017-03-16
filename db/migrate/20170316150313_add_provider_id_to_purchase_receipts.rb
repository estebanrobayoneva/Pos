class AddProviderIdToPurchaseReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :purchase_receipts, :provider_id, :integer
  end
end
