Rails.application.routes.draw do
  get 'reviews/show'
  get 'movies/show'
  devise_for :users
  root to: 'static_pages#home'
  get 'static_pages/home'
end
