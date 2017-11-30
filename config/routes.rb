Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :new, :create]
  end
  resources :users, only: [:index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'groups#index'
end
