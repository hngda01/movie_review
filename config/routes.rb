Rails.application.routes.draw do
  get 'reviews/show'
  devise_for :users
  root to: 'static_pages#home'
  get 'static_pages/home'
  resources :movies 
end
