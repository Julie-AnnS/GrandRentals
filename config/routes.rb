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

end
