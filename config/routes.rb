Rails.application.routes.draw do
  root to: "projects#index"
  resources :projects do
    resources :archives, only: [:new, :create]
  end

  resources :archives, except: [:new, :create, :index]
  resources :drives

  resource :search, only: [:show]
end
