Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  namespace :admin do
    resources :posts
    resources :post_categories
    resources :pages
    resources :galleries
    resources :blocks
    resources :menus
    resources :menu_items
    resources :users

    root to: "posts#index"
  end


   
end
