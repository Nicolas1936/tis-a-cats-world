Rails.application.routes.draw do
  get "cats/my_cats", to: "cats#my_cats"
  resources :cats do
    collection do
      get :home
    end

    member do
      get 'toggle_favorite', to: "cats#toggle_favorite"
    end
  end

  devise_for :users
  get 'favorite', to: "cats#favorite"

  root to: "pages#home"

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :users do
    member do
      get 'connect_chatrooms', to: "users#connect_chatrooms"
    end
  end
end
