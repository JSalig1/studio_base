Rails.application.routes.draw do

  scope "/studiobase" do
    root to: "drives#index"
    resources :drives
    resource :search, only: [:show]

    delete "/signout" => "sessions#destroy"
    get "/signin" => "sessions#new"
    post "/adauth" => "sessions#create"
  end

end
