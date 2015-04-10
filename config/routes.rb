Rails.application.routes.draw do
  root to: "projects#index"
  resources :projects, except: [:destroy] do
    resources :archives, only: [:new, :create]
  end

  resources :drives, except: [:edit, :update, :destroy]
end
