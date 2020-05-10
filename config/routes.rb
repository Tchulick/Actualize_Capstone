Rails.application.routes.draw do
  namespace :api do
    get "/user" => "users#index"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
  end
end
