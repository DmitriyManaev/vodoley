class EventsController < ApplicationController
  before_action :ensure_json_request

  def index
    events = Event.all

    render json: { events: events }, status: :ok
  end
end