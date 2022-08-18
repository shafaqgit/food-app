class MenuItemController < ApplicationController
    before_action :authenticate_admin!


    def displayitems
        @menu_item = MenuItem.all

    end
    def new
        @menu_item = MenuItem.new
    end

    def create
        debugger
        @menu_items=Category.find(params[:category_id]).menu_items.create(name: params[:name], price: params[:price], status: params[:status], cover_photo: params[:cover_photo])
        # @y=MenuItem.create(name: params[:name], price: params[:price], status: params[:status], cover_photo: params[:cover_photo])
        # @z=@x.MenuCategory.create(menu_item_id:@y.id)
        @menu_item = Category.find(params[:category_id]).MenuItem
        render "displayitems"
    end

    def edit
        @menu_item = MenuItem.find(params[:id])
    end

    def update 
        @menu_item = MenuItem.find(params[:id])
        if @menu_item.update(name: params[:name], price: params[:price], status: params[:status], cover_photo: params[:cover_photo])
            flash[:success] = "Item successfully updated!"
            redirect_to "/menuitems/display"
        else
            flash.now[:error] = "Item update failed"
            render :edit
        end
    end


end
