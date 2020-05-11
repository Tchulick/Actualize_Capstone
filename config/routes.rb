Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
    get "/rooms/:id" => "rooms#show"
    patch "/rooms/:id" => "rooms#update"
    delete "/rooms/:id" => "rooms#destroy"
  end
end
