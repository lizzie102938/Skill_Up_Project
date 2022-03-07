Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :skills, only: [:index, :show]
  resources :user_skills, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :update, :destroy] do
    resources :reviews, only: [:create]
  end
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
  get "dashboard", to: "pages#dashboard"
  get "how-it-works", to: "pages#how-it-works"
end
