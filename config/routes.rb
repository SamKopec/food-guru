Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  root to: "home#index"
  resources :lessons do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy, :edit, :update]
  resources :users, only: [:show, :new, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
