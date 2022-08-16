ActiveAdmin.register Admin do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :manager_id, :fullname, :cnic, :address, :salary, :contact, :restaurants_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :manager_id, :fullname, :cnic, :address, :salary, :contact, :restaurants_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :email, :password, :manager_id, :fullname, :cnic, :restaurants_id
  
  form do |f|

    f.inputs do 
      f.input :fullname
      f.input :email
      f.input :password
      f.input :manager_id
      f.input :restaurants_id
      f.input :cnic
      f.input :address
      f.input :salary
      f.input :contact
    end
  end
  
end
