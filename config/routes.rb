Rails.application.routes.draw do
  namespace :api do
    get "/rooms" => "rooms#index"

    get "/users" => "users#index"
  end
end
