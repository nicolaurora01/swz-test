Rails.application.routes.draw do

  resources :comments
  resources :posts
  root to: 'welcome#index'
  devise_for :users

  resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
