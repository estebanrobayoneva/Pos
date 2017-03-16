class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.integer :cantidad_producto
      t.decimal :precio

      t.timestamps
    end
  end
end
