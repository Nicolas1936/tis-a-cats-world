Rails.application.routes.draw do
  root to: "pages#home"

  get "cats/my_cats", to: "cats#my_cats"
  resources :cats do
    collection do
      get :home
    end

    member do
      get 'toggle_favorite', to: "cats#toggle_favorite"
    end
  end
  get 'favorite', to: "cats#favorite"

  devise_for :users
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
end
