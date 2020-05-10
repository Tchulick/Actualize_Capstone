Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
  end
end
