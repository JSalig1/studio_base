Rails.application.routes.draw do
  root to: "projects#index"
  resources :projects do
    resources :archives, only: [:new, :create]
  end

  resources :archives, only: [:show, :edit, :update]
  resources :drives
end
