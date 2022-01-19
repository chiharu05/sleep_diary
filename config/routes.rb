Rails.application.routes.draw do
  get 'chart_sample/index'
  root to: 'posts#new'
  resources :posts
end