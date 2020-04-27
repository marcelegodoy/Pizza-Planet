Rails.application.routes.draw do
  devise_for :users

  resources :menus, only: [:index, :show]

  root to: 'menus#home'

  resources :pizzas

  resources :categories

end
