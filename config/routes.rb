Rails.application.routes.draw do
  namespace :api do
    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"
  end
end
