class AddColumnToDeal < ActiveRecord::Migration[6.1]
  def change
    add_column :deals, :price, :integer
  end
end
