class ActorController < ActionController::API
  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def show
    actors_id = params["id"]
    @actors = Actor.find_by(id: actors_id)
    render template: "actors/show"
  end

  def create
    Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
      gender: params[""]
    )
    render template: "actors/show"
  end

  def update
    actors_id = params["id"]
    @actors = Actor.find_by(id: actors_id)

    @actors.first_name = params["first_name"] || @actors.first_name
    @actors.last_name = params["last_name"] || @actors.last_name
    @actors.known_for = params["known_for"] || @actors.known_for
    @actors.gender = params["gender"] || @actors.gender
    @actors.age = params["age"] || @actors.age
    @actors.save
    render template: "actors/show"
  end

  def destroy
    actors_id = params["id"]
    actor = Actor.find_by(id: actors_id)
    actor.destroy
    render json: { message: "Actor deleted" }
  end
end

#first_name last_name known_for
