class MenuItemController < ApplicationController
    before_action :authenticate_admin!

    def show
        
    end

    def displayitems
        @menu_item = MenuItem.all

    end
    def new
        @menu_item = MenuItem.new
    end

    def create
        @menu_item = MenuItem.create(name: params[:name], price: params[:price], status: params[:status], cover_photo: params[:cover_photo])
        redirect_to "/menuitems/display"
    end
end
