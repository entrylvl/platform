Rails.application.routes.draw do
  root to: "home#index"

  get '/:slug', to: 'home#slug'
  
  namespace :dashboard do
    devise_for :users, path: ''

    resources :posts

    root 'panel#index'

    get '/picture', to: 'panel#picture'
    post '/picture', to: 'panel#save_picture'

  end
end
