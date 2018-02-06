Rails.application.routes.draw do
  root to: "home#index"

  get '/about', to: 'home#about'

  get 'post/:slug', to: 'posts#post', as: :post

  namespace :dashboard do
    devise_for :users, only: [:sessions], path: ''

    resources :posts
    resources :users, only: [:new, :create, :edit, :update]

    root 'panel#index'
  end
end
