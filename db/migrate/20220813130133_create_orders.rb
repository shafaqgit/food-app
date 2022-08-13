class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :total
      t.string :status
      t.string :payment_type
      t.boolean :payment_status

      t.timestamps
    end
  end
end
