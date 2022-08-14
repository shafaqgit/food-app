class AddOrderItemToAddOn < ActiveRecord::Migration[6.1]
  def change
    add_reference :add_ons, :order_item, null: true, foreign_key: true
  end
end
