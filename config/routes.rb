Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admins
  get '/dashboard', to: "pages#dashboard"
  post '/edit', to: "pages#update"
  get '/restaurants', to:"restaurant#show"
  get 'menuitems/new', to: "menu_item#new"
  post '/menuitems', to: 'menu_item#create'
  get '/menuitems/display', to: 'menu_item#displayitems' 

  get '/deals', to: 'deal#index'
  get 'deals/new', to: "menu_item#new"
  post '/deals/create', to: 'menu_item#create'
  
  # root to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
