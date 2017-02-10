Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'products#index'
  authenticate :user do
    resources :products, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :products
end
