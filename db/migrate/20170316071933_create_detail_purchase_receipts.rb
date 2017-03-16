class CreateDetailPurchaseReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :detail_purchase_receipts do |t|
      t.integer :cantidad
      t.decimal :valor_total

      t.timestamps
    end
  end
end
