class AddSocietyIdToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :society_id, :integer
  end
end
