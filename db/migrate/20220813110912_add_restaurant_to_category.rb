class AddRestaurantToCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :restaurant, null: false, foreign_key: true
  end
end
