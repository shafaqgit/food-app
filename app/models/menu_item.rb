class MenuItem < ApplicationRecord
    has_many :menu_categories, dependent: :destroy
    has_many :categories, through: :menu_categories
    has_many :order_items, as: :order_itemable 
    has_and_belongs_to_many :add_ons
    has_many :options
    has_many :promos, as: :promoable
    has_one_attached :cover_photo
end
