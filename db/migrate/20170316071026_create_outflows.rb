class CreateOutflows < ActiveRecord::Migration[5.0]
  def change
    create_table :outflows do |t|
      t.date :fecha
      t.string :concepto
      t.integer :nit
      t.string :entidad
      t.integer :numero_factura
      t.decimal :valor

      t.timestamps
    end
  end
end
