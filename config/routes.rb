Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users

    root to: "users#index"
  end


   
end
