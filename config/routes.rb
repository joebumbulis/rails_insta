Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'home/index'
  get 'search' => 'search#index'
  
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]

  root to: 'home#index'
end
