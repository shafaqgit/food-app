class DealMenuItem < ApplicationRecord
    has_and_belongs_to_many :orders
end
