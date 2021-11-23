Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :poneys, only: [:index, :show, :new, :create, :edit, :destroy] do
    resources :bookings, only: [:new, :create]
  end
end
