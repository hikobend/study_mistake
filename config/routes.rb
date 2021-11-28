Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/index'
  # usersを用いた必要なルーティングが作られる
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
