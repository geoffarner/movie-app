Rails.application.routes.draw do
  get "/movies" => "movie#index"

  get "/movies/:id" => "movie#show"

  post "/movies/" => "movie#create"

  patch "/movies" => "movie#update"

  delete "/movie/:id" => "movie#destroy"
end
