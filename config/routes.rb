Rails.application.routes.draw do


  resources :posts do
    resources :comments
  end
  root to: 'welcome#index'
  devise_for :users
  resources :categories, except: [:destroy]
  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
