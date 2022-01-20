Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#new'
  resources :posts do
    resources :records, only: [:index, :new, :create, :show]
  end
  resources :users, only: [:show, :edit, :update]
end