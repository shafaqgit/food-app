class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :additional_cost

      t.timestamps
    end
  end
end
