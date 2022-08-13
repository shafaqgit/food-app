class AddRestaurantToDiscount < ActiveRecord::Migration[6.1]
  def change
    add_reference :discounts, :restaurant, null: false, foreign_key: true
  end
end
