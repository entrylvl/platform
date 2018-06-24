Rails.application.routes.draw do
  root to: "home#index"

  get '/about', to: 'home#about'

  get '/jobs', to: 'home#jobs'

  resources :posts, only: :show, param: :slug,path: 'post'

  namespace :dashboard do
    devise_for :users, only: [:sessions], path: ''

    resources :posts do
      member do
        post :publish
      end
    end
    resources :users, only: [:new, :create, :edit, :update]
    resources :jobs, except: :destroy

    root 'panel#index'
  end
end
