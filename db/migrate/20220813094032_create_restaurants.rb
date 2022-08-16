class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :per_cut
      t.time :opening_hours
      t.time :closing_hours

      t.timestamps
    end
  end
end
