class Deal < ApplicationRecord
    belongs_to :restaurant, class_name:"Restaurant", foreign_key:"restaurants_id"
end
