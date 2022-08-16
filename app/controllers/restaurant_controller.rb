class RestaurantController < ApplicationController
    before_action :authenticate_admin!
    def show 
        
        @q= Restaurant.ransack(params[:q])
        
        @restaurant=@q.result

    end

    def index 
        
    end 
end
