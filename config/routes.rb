Rails.application.routes.draw do
  get "/movies" => "movie#index"
  get "/actors" => "actor#index"
  ##
  get "/movies/:id" => "movie#show"
  get "/actors/:id" => "actor#show"
  ##
  post "/movies" => "movie#create"
  post "/actors" => "actor#create"
  ##
  patch "/movies/:id" => "movie#update"
  patch "/actors/:id" => "actor#update"
  ##
  delete "/movies/:id" => "movie#destroy"
  delete "/actors/:id" => "actor#destroy"
end
