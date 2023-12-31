Rails.application.routes.draw do
  root  'homes#top'
  devise_for :users
  get "/home/about" => "homes#about"
  resources :books, only: [:new, :show, :index, :edit, :create, :destroy, :update]
  resources :users, only: [:index, :show, :edit, :update, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
