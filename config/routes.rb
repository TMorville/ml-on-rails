Rails.application.routes.draw do
  root 'requests#index'
  resources :requests
end
