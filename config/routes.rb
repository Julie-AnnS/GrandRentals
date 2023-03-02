Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  get 'grandparents', to: 'grandparents#index'
  get 'grandparents/new', to: 'grandparents#new'
  get 'grandparents/:id', to: 'grandparents#show', as: :grandparent
  post 'grandparents', to: 'grandparents#create'
  get 'bookings', to: 'bookings#index', as: :bookings
  #get 'grandparents/:id/bookings/new', to: 'bookings#new', as: :bookings_new
  post 'grandparents/:id/bookings/', to: 'bookings#create'
  get 'bookings/:id', to: 'bookings#show', as: :show_booking
  resources :grandparents, only: [:show ] do
    resources :bookings, only: [:new, :create]
  end

  get 'requests', to: 'bookings#owner_bookings'

  patch 'bookings/:id/accept', to: 'bookings#accept', as: :booking_accept
  patch 'bookings/:id/decline', to: 'bookings#decline', as: :booking_decline
  # resources :bookings, only: [] do
  #   patch :accept
  #   patch :decline
  # end
end
