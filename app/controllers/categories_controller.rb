class CategoriesController < ApplicationController
    before_action :authenticate_admin!

    def index
        @q= Category.ransack(params[:q])
        @cat_items=@q.result
    end


    def new
        @cat_item = Category.new
    end

    def create
        
        @cat_item = Restaurant.find_by(current_admin.restaurants_id.to_s).categories.create(name: params[:category][:name])
        redirect_to categories_path
    end

    def edit
        @cat_item = Category.find(params[:id])
    end

    def update 
        @cat_item = Category.find(params[:id])
        if @cat_item.update(name: params[:category][:name])
            flash[:success] = "Item successfully updated!"
            redirect_to categories_path
        else
            flash.now[:error] = "Item update failed"
            render :edit
        end
    end

    def destroy 
        @cat_item = Category.find(params[:id])
        @cat_item.delete
        flash[:success] = "Item was successfully destroyed."
        redirect_to categories_path
    end    
    
end
