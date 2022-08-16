class MenuItemController < ApplicationController
    before_action :authenticate_admin!

    def show 
    @menu_items=MenuItem.all
    end
end
