Rails.application.routes.draw do
  root "pages#index"
  resources :users, only: [:index, :create]
  resources :todo_lists, only: [:index, :create]
  resources :todos, only: [:index, :create]
end
