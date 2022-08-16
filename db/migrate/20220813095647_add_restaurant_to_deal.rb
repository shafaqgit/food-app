class AddRestaurantToDeal < ActiveRecord::Migration[6.1]
  def change
    add_reference :deals, :restaurants, null: false, foreign_key: true
  end
end
