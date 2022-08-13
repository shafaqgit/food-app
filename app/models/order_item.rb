class OrderItem < ApplicationRecord
  belongs_to :order_itemable, polymorphic: true
end
