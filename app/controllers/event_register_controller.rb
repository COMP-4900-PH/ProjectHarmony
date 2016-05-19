class EventRegisterController < ApplicationController
  load_and_authorize_resource

  # POST /event_register/1
  def create
    # Creates a new event register
    event_register = EventRegister.new()
    event_register.event_id = params[:id]
    event_register.user_id = current_user.id

    # Finds all event register entries that the user is signed up for
    query = "select * from event_registers
      where user_id = #{current_user.id}
      and event_id = #{event_register.event_id}"
    @records_array = ActiveRecord::Base.connection.execute(query)

    # Returns the sailing id (or ship) that the current event is occuring on
    event_query = "select DISTINCT s.id from sailings AS s
      INNER JOIN events on events.sailing_id = s.id
      INNER JOIN event_registers on events.id = event_registers.event_id
      where event_registers.event_id = #{event_register.event_id}"
    @event_query_array = Sailing.find_by_sql(event_query)

    # If there are no entries in the @event_query_array, produce and error and return the the page
    if ( @event_query_array[0] == nil)
      flash[:alert] = "You must join this sailing before joining this event! (there are no sailings for that register event id)"
      return redirect_to :back
    end

    # Search all sailings that the current user is registered for
    user_sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)
    # Find the sailing with the same id as the event
    @one_sailing = user_sailings.find {|b| b.id == @event_query_array[0].id}

    # if the sailing is empty, the user must join that sailing before joining the event
    if (@one_sailing.blank?)
      flash[:alert] = "You must join this sailing before joining this event!"
      return redirect_to :back
    else

    end

    # If the user has not signed up for this event, allow them to join
    if (@records_array.blank?)
      flash[:notice] = "You have joined the event!"
      event_register.save
      # On event creation, direct back to profile page
      redirect_to user_dashboard_path
    else
      # A user cannot join the same event twice
      flash[:alert] = "You cannot join the same event twice!"
      redirect_to :back
    end
  end
end
