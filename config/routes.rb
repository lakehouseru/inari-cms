Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users
    resources :menus
    resources :menu_items
    root to: "users#index"
  end


   
end
