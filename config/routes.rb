Rails.application.routes.draw do
  root 'top#index'
  resources :files, only: [:index] do
    collection do
      get :read_csv
      get :read_xml
    end
  end
end
