Rails.application.routes.draw do
  root to: "drives#index"
  get "/studiobase" => "drives#index"

  scope "/studiobase" do
    resources :drives
    resource :search, only: [:show]
  end

end
