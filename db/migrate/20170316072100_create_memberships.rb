class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.date :fecha_afiliacion
      t.string :periodicidad
      t.date :fecha_vencimiento
      t.date :fecha_cuota

      t.timestamps
    end
  end
end
