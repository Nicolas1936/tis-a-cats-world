Rails.application.routes.draw do
  resources :cats do
    collection do
      get :home
    end
  end

  devise_for :users
  root to: "pages#home"

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
