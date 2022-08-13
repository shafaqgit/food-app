class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :item_type
      t.integer :order_id
      t.integer :menu_item_id

      t.timestamps
    end
  end
end
