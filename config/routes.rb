Rails.application.routes.draw do
  root 'top#index'
  resources :files, only: [:index] do
    collection do
      get :read_csv
    end
  end
end
