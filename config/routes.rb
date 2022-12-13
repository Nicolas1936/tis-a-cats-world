Rails.application.routes.draw do
  root to: "pages#home"

  get "about_us", to: "pages#about_us"

  get "cats/my_cats", to: "cats#my_cats"

  resources :cats do
    collection do
      get :home
    end

    member do
      get 'toggle_favorite', to: "cats#toggle_favorite"
      get 'change_is_adopted', to: "cats#change_is_adopted"
    end
  end
  get 'favorite', to: "cats#favorite"

  devise_for :users, path_names: { edit: 'profile' }
  resources :users do
    member do
      post 'connect_chatrooms', to: "users#connect_chatrooms"
    end
  end

  get 'messages', to: "chatrooms#messages"

  resources :chatrooms, only: [] do
    resources :messages, only: :create
  end

  resources :users do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
end
