class ActorController < ActionController::API
  def index
    @actors = Actor.all
    render template: "actors/index"
  end

  def show
    actor_id = params["id"]
    @actors = Actor.find_by(id: actor_id)
    render template: "actors/show"
  end

  def create
    Actor.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
    )
    render template: "actors/show"
  end

  def update
    actor_id = params["id"]
    @actors = Actor.find_by(id: actor_id)

    @actors.first_name = params["first_name"] || @actors.first_name
    @actors.last_name = params["last_name"] || @actors.last_name
    @actors.known_for = params["known_for"] || @actors.known_for
    @actors.save
    render template: "actors/show"
  end

  def destroy
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    actor.destroy
    render json: { message: "Actor deleted" }
  end
end

#first_name last_name known_for
ac
