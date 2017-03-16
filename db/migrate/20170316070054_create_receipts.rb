class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.date :fecha
      t.float :valor_total

      t.timestamps
    end
  end
end
