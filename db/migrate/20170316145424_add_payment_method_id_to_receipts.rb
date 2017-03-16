class AddPaymentMethodIdToReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :receipts, :payment_method_id, :integer
  end
end
