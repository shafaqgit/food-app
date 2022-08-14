class DealMenuItem < ApplicationRecord
    has_and_belongs_to_many :orders
    has_many :order_items, as: :order_itemable
end
