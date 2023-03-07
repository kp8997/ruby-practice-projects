Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  # get 'exercises/:id', to: 'exercises#fetch'
  resources :articles
  resources :exercises, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # resources :exercises # equal to CRUD for Exercise class  model
  # resources :exercises, only: [:show, :index, :new, :edit, :create, :update, :destroy]
end
