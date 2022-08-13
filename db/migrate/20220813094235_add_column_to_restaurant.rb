class AddColumnToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :manager_id, :integer
    add_foreign_key :restaurants, :admins, column: :manager_id
  end
end
