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
  get 'menuitems/:id/edit', to: 'menu_item#edit', as: 'edit_menuitem'
  patch 'menuitems/:id', to: 'menu_item#update', as: 'update_menuitem'


  get '/deals', to: 'deal#index'

  # resources :deal_menu_items
  # get '/dealmenuitems/new', to: "deal_menu_item#new"
  # post '/dealmenuitems/create', to: 'deal_menu_item#create'
  # get '/dealmenuitems', to: 'deal_menu_item#index'

  resources :deal_menu_items
  resources :categories
  # root to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
