Rails.application.routes.draw do
  get "cats/my_cats", to: "cats#my_cats"
  resources :cats do
    collection do
      get :home
    end
  end

  devise_for :users
  root to: "pages#home"

  resources :users
end
