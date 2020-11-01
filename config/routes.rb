Rails.application.routes.draw do
  root 'top#index'
  resources :files, only: [:index] do
    collection do
      get :read_csv
      get :read_xml
      get :read_xml_to_hash
    end
  end
end
