class MenuItem < ApplicationRecord
    has_many :order_items, as: :order_itemable 
end
