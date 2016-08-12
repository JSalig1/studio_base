Rails.application.routes.draw do

  scope "/studiobase" do
    root to: "drives#index"
    resources :drives
    resource :search, only: [:show]
  end

end
