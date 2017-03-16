class CreateSocieties < ActiveRecord::Migration[5.0]
  def change
    create_table :societies do |t|
      t.string :nombre
      t.text :descripcion
      t.float :val_anual
      t.float :val_semestral
      t.float :val_mensual

      t.timestamps
    end
  end
end
