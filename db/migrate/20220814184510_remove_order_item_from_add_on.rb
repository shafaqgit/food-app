class RemoveOrderItemFromAddOn < ActiveRecord::Migration[6.1]
  def change
    remove_reference :add_ons, :order_item, null: false, foreign_key: true
  end
end
