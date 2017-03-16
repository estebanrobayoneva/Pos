class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.integer :nit
      t.string :nombre
      t.string :departamento
      t.string :ciudad
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
