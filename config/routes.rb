Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: [:new, :create] do
    resources :messages, only: [:index]
  end
  resources :users, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'messages#index'
end
