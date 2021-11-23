Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :poneys do
    resources :bookings, only: [:new, :create]
  end
  patch "bookings/:id/accept", to: "bookings#accept"
  patch "bookings/:id/decline", to: "bookings#decline"
  get "mybookings", to: "bookings#mybookings"
  delete "bookings/:id", to: "bookings#destroy"
  get "myponies", to: "poneys#myponies"
  get "user/signin", to: "user#signin"
  get "user/signin", to: "user#login"
  get "user/signup", to: "user#signup"
  get "user/signup", to: "user#register"
end
