class HomeController < ApplicationController

  def index
    # abort params[:q].inspect
    # Returns all sailings in database, if there are no search params
    @search = Sailing.search(params[:q])
    @sailings = @search.result
    # Returns all events in database
    @events = Event.all
    # Selects unique sailing destinations
    @uniqueSailings = @sailings.uniq.pluck(:destination_identifier)
    # Selects unique events
    @uniqueEvents = @events.uniq.pluck(:event_name)
  end

end
