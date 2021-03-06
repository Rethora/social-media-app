Rails.application.routes.draw do
  resources :friends
  devise_for :users, controllers: { registrations: 'registrations/registrations', sessions: 'registrations/sessions'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '*path', to: 'home#index', constraints: ->(request){ request.format.html? }
  root 'home#index'
end
