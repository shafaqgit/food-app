class RestaurantController < ApplicationController
    before_action :authenticate_admin!
    def show 
        @restaurant=Restaurant.all

    end
end
