Rails.application.routes.draw do
  devise_for :users, :controllers => { :invitation => 'users/invitation' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  # resources :users


end

