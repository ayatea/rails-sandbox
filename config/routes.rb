Rails.application.routes.draw do
  root 'top#index'
  resources :files, only: [:index]
end
