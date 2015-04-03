Rails.application.routes.draw do
  root to: "projects#index"
  resources :projects, except: [:destroy]

  resources :drives, only: [:index, :show, :new, :edit, :create]
  resources :project_archives, only: [:index, :create, :new]
end
