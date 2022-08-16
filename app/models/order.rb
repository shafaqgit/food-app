class Order < ApplicationRecord
    belongs_to :restaurant 
    has_and_belongs_to_many :deal_menu_items
    has_many :order_items
end
