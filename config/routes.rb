Rails.application.routes.draw do

  scope "/studiobase" do
    root to: "drives#index"
    resources :drives do
      resources :checkouts, only: [:new, :create]
    end

    resources :checkouts, only: [:edit, :update, :show]
    resources :checkins, only: [:edit, :update]

    resource :search, only: [:show]
    resource :print, only: [:show]

    delete "/signout" => "sessions#destroy"
    get "/signin" => "sessions#new"
    post "/adauth" => "sessions#create"
  end

end
