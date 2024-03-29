Rails.application.routes.draw do
  ## index
  get "/movies" => "movies#index"
  get "/actors" => "actors#index"
  ## show
  get "/movies/:id" => "movies#show"
  get "/actors/:id" => "actors#show"
  ## create
  post "/movies" => "movies#create"
  post "/actors" => "actors#create"
  ## update
  patch "/movies/:id" => "movies#update"
  patch "/actors/:id" => "actors#update"
  ## destroy
  delete "/movies/:id" => "movies#destroy"
  delete "/actors/:id" => "actors#destroy"
  ## user create
  post "/users" => "users#create"
  ### user session
  post "/sessions" => "sessions#create"
  ## movie genre create
  post "/movie_genre" => "movie_genre#create"
end
