class AddReceiptIdToDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :details, :receipt_id, :integer
  end
end
