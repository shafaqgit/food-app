class CreateJoinTableCategoriesMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_join_table :categories, :menu_items do |t|
      t.timestamps
      # t.index [:category_id, :menu_item_id]
      # t.index [:menu_item_id, :category_id]
    end
  end
end
