class AddSocietyIdToReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :receipts, :society_id, :integer
  end
end
