Rails.application.routes.draw do
  root to: "home#index"

  get '/about', to: 'home#about'

  get '/jobs', to: 'home#jobs'

  get 'post/:slug', to: 'posts#post', as: :post

  namespace :dashboard do
    devise_for :users, only: [:sessions], path: ''

    resources :posts do
      member do
        post :publish
      end
    end
    resources :users, only: [:new, :create, :edit, :update]

    root 'panel#index'
  end
end
