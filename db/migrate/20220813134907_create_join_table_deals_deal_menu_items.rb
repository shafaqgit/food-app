class CreateJoinTableDealsDealMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_join_table :deals, :deal_menu_items do |t|
      t.timestamps
      # t.index [:deal_id, :deal_menu_item_id]
      # t.index [:deal_menu_item_id, :deal_id]
    end
  end
end
