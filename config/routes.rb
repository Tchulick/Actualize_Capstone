Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
    get "/rooms/:id" => "rooms#show"
    patch "/rooms/:id" => "rooms#update"
    delete "/rooms/:id" => "rooms#destroy"
  end
end
