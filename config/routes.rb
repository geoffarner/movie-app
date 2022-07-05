Rails.application.routes.draw do
  def actor
    return Actor(id:)
  end
  get "/movies" => "movies#index"
end

