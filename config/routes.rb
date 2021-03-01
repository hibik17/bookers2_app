Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :homes, only: [:top,:index]
  resources :users, only: [:show,:edit,:update,:index]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
