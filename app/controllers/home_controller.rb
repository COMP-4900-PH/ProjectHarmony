class HomeController < ApplicationController

  def index
    # Returns all sailings in database
    @sailings = Sailing.all
    # Selects unique sailing destinations
    @uniqueSailings = @sailings.uniq.pluck(:destination_identifier)
  end

end
