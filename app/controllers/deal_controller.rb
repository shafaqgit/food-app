class DealController < ApplicationController
   

    def index 
        @q= Deal.ransack(params[:q])
        
        @deal=@q.result

    end
    
end
