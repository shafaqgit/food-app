class AddRestaurantToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_reference :admins, :restaurants, null: false, foreign_key: true
  end
end
