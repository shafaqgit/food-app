class AddMenuItemToOption < ActiveRecord::Migration[6.1]
  def change
    add_reference :options, :menu_item, null: false, foreign_key: true
  end
end
