class CreatePromos < ActiveRecord::Migration[6.1]
  def change
    create_table :promos do |t|
      t.string :code
      t.float :discount_percentage

      t.timestamps
    end
  end
end
