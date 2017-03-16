class CreatePaymentWays < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_ways do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
