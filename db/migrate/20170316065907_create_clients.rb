class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.integer :documento
      t.string :tipo_documento
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.string :pais
      t.string :ciudad
      t.string :email

      t.timestamps
    end
  end
end
