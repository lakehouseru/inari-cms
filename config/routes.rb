Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  namespace :admin do
    resources :users
    resources :menus
    resources :menu_items
    resources :posts
    resources :post_categories
    resources :galleries
    root to: "users#index"
  end


   
end
