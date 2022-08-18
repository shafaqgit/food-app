class Category < ApplicationRecord
    belongs_to :restaurant
    has_many :menu_categories, dependent: :destroy
    has_many :menu_items, through: :menu_categories
end
