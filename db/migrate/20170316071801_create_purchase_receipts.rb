class CreatePurchaseReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_receipts do |t|
      t.date :fecha
      t.integer :numero_factura
      t.integer :cantidad
      t.decimal :costu_unitario
      t.decimal :valor_total

      t.timestamps
    end
  end
end
