Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  post 'user_referral/invite',to: "user_referral#invite"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
