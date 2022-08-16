class CreateJoinTableAddOnsMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_join_table :add_ons, :menu_items do |t|
      t.timestamps
      # t.index [:add_on_id, :menu_item_id]
      # t.index [:menu_item_id, :add_on_id]
    end
  end
end
