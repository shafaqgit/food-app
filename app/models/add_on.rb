class AddOn < ApplicationRecord
   has_and_belongs_to_many :menu_items
   has_many :order_items, as: :order_itemable 
   has_many :promos, as: :promoable
end
