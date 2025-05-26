Rails.application.routes.draw do
  root to: 'spots#index'

  resources :spots
end