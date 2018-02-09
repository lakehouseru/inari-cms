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
    resources :sliders
    delete 'gallery_attachment/:id', to: 'galleries#destroy_attachment', as: :destroy_attachment

    root to: "posts#index"
  end


   
end
