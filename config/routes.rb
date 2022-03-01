Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :skills, only: [:index, :show] do
    resources :bookings, only: [:new, :show, :update, :create] do
      resources :reviews, only: [:create]
    end
  end
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
  get "dashboard", to: "pages#dashboard"
end
