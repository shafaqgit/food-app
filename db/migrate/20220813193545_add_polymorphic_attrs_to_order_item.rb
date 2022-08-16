class AddPolymorphicAttrsToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :order_itemable_type, :string
    add_column :order_items, :order_itemable_id, :integer
    remove_column :order_items, :order_id, :integer
    remove_column :order_items, :menu_item_id, :integer
  end
end
