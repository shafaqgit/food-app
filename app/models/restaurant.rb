class Restaurant < ApplicationRecord
    has_many :admins, class_name:"Admin", foreign_key:"restaurants_id"
    belongs_to :manager, class_name:"Admin", foreign_key:"manager_id", optional:true
    
    has_many :deals, class_name:"Deal", foreign_key:"restaurants_id"
    has_many :categories
    has_many :discounts
    has_many :orders 
end
