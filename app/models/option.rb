class Option < ApplicationRecord
    belongs_to :menu_item
    has_many :order_items, as: :order_itemable 
end
