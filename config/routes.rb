Rails.application.routes.draw do
  root to: "projects#index"
  resources :projects, except: [:destroy]
  resources :archives, only: [:new, :create]
end
