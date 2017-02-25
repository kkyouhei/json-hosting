Rails.application.routes.draw do
  root 'pages#index'

  resources :jsons, only: [:show, :create, :new]
end
