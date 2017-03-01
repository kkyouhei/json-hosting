Rails.application.routes.draw do
  root controller: "jsons", action: "new"
  resources :jsons, only: [:show, :create, :new]
end
