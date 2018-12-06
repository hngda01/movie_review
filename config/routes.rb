Rails.application.routes.draw do
  get 'suggest_movie', to: "movies#suggest_movie"
  get 'delete_noti', to: "static_pages#delete_noti"
  get 'admin/user'
  get 'admin/review' ,to: "admin#review"
  delete 'commentdelete', to:"admin#commentdelete"
  get 'admin/index'
  get '/deactive', to: "admin#deactivate"
  get '/suki', to: "movies#suki"
  get '/mitai', to: "movies#mitai"
  get '/mita', to: "movies#mita"
  get '/undeactivate', to: "admin#undeactivate"
  get 'reviews/show'

  get 'admin/suggest_list'
  get 'admin/actor'
  match '/suggest_confirm/:id', to: "admin#suggest_confirm", via: [:get, :post], as: :suggest_confirm
  get "/add_review", to: "reviews#add"
  get "/like_review", to: "reviews#like_review"
  get 'reviews/remove'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'static_pages#home'
  get 'static_pages/home'
  match '/search', to: "static_pages#search", via: [:get, :post], as: :search
  get '/top_rating', to: 'static_pages#top_rating', as: :top_rating
  get '/showing', to: 'static_pages#showing', as: :showing
  get '/show_soon', to: 'static_pages#show_soon', as: :show_soon
  get '/last_update', to: 'static_pages#last_update', as: :last_update
  get '/cate', to: 'static_pages#cate'
  get '/nation', to: 'static_pages#nation'
  resources :movies
  resources :actors
  resources :users, only: [:show, :edit]
end
