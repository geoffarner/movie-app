Rails.application.routes.draw do
  get "/movies" => "movie#index"
  get "/actors" => "actor#index"
  ##
  get "/movies/:id" => "movie#show"
  get "/actors" => "actor#show"
  ##
  post "/movies/" => "movie#create"
  post "/actors" => "actor#create"
  ##
  patch "/movies" => "movie#update"
  patch "/actors" => "actor#update"
  ##
  delete "/movie/:id" => "movie#destroy"
  delete "/actors" => "actor#destroy"
end
