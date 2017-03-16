class AddCategoryIdToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :category_id, :integer
  end
end
