Rails.application.routes.draw do
  root to: "drives#index"
  resources :drives

  resource :search, only: [:show]
end
