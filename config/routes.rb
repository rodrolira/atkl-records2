Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'multimedia_items/index'
  get 'multimedia_items/show'
  get 'multimedia_items/new'
  get 'multimedia_items/create'
  get 'multimedia_items/edit'
  get 'multimedia_items/update'
  get 'multimedia_items/destroy'
  get 'e_ps/index'
  get 'e_ps/show'
  get 'e_ps/new'
  get 'e_ps/create'
  get 'e_ps/edit'
  get 'e_ps/update'
  get 'e_ps/destroy'
  get 'albums/index'
  get 'albums/show'
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/update'
  get 'albums/destroy'
  get 'tracks/index'
  get 'tracks/show'
  get 'tracks/new'
  get 'tracks/create'
  get 'tracks/edit'
  get 'tracks/update'
  get 'tracks/destroy'
  get 'discography/index'
  get 'releases/index'
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "home/index"
  resources :artists, only: [:index, :show, :new, :create] # Puedes ajustar las acciones según tus necesidades
  resources :releases, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
