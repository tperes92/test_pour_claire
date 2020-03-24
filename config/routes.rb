Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  resources :users
  resources :cities
  resources :attendances, only: [:create, :destroy]
  resources :likes
  resources :like_projects


  root 'projects#index'
  resources :projects
  get '/contact/', to: 'pages#contact'

  scope ':by_city' do
    resources :city, only: [:index]

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

