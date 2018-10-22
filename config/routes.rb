Rails.application.routes.draw do
  get "/add_review", to: "reviews#add"
  get 'reviews/remove'
  devise_for :users
  root to: 'static_pages#home'
  get 'static_pages/home'
  match '/search', to: "static_pages#search", via: [:get, :post], as: :search
  resources :movies
  resources :users, only: [:show]
end
