Rails.application.routes.draw do
  get "/movies" => "movie#index"
  get "/movies/:id" => "movie#show"
end
