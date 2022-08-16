class PagesController < ApplicationController
  
  before_action :authenticate_admin!

  def dashboard
    
  end 

  def update
    @admin=curent_admin
    if @admin.update_attributes(current_user_params)
      flash[:notice]="Saved Successfully"
    
    else 
      flash[:alert]="Something went wrong!"
    end
      redirect_to dashboard_path
  end 
  
  private 
  def current_user_params
    params.require(:admins).permit(:cnic, :address, :fullname)
  end


end
