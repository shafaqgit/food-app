class DealMenuItemsController < ApplicationController
    before_action :authenticate_admin!

    

    def index
        
        @q= DealMenuItem.ransack(params[:q])
        
        @deal_items=@q.result

    end
    def new
        @deal_item = DealMenuItem.new
    end

    def create
        
        @deal_item = DealMenuItem.create(name: params[:deal_menu_item][:name], price: params[:deal_menu_item][:price], status: params[:deal_menu_item][:status], deal_photo: params[:deal_menu_item][:deal_photo])
        redirect_to deal_menu_items_path
    end

    def edit
        @deal_item = DealMenuItem.find(params[:id])
    end

    def update 
        @deal_item = DealMenuItem.find(params[:id])
        if @deal_item.update(name: params[:deal_menu_item][:name], price: params[:deal_menu_item][:price], status: params[:deal_menu_item][:status], deal_photo: params[:deal_menu_item][:deal_photo])
            flash[:success] = "Item successfully updated!"
            redirect_to deal_menu_items_path
        else
            flash.now[:error] = "Item update failed"
            render :edit
        end
    end

    def destroy 
        @deal_item = DealMenuItem.find(params[:id])
        @deal_item.delete
        flash[:success] = "Item was successfully destroyed."
        redirect_to deal_menu_items_path
    end


end
