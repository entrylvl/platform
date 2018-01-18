Rails.application.routes.draw do
  root to: "home#index"

  get '/about', to: 'home#about'

  get 'post/:slug', to: 'posts#post', as: :post

  namespace :dashboard do
    devise_for :users, only: [:sessions], path: ''

    resources :posts

    root 'panel#index'

    get '/picture', to: 'panel#picture'
    post '/picture', to: 'panel#save_picture'
  end
end
