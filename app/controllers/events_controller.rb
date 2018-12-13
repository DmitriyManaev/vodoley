class EventsController < ApplicationController
  respond_to :html

  def index
    @events = Event.all

    respond_to do |format|
      format.html { render :index, status: :ok }
      format.json { render json: { events: @events }, status: :ok }
    end
  end

  def show
    @event = Event.find_by(slug: params[:slug])

    respond_to do |format|
      format.html { render :show, status: :ok }
      format.json { render json: { event: @event }, status: :ok }
    end
  end
end