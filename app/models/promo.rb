class Promo < ApplicationRecord
    belongs_to :promoable, polymorphic: true
end
