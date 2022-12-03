Rails.application.routes.draw do
  get 'reviews/new'
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
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
end
