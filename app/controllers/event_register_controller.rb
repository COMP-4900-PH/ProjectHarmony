class EventRegisterController < ApplicationController
  load_and_authorize_resource

  # POST /event_register/1
  def create
    # Creates a new event register
    event_register = EventRegister.new()
    event_register.event_id = params[:id]
    event_register.user_id = current_user.id
    event_register.save

    flash[:notice] = "You have joined the event!"
    # On event creation, direct back to profile page
    redirect_to user_dashboard_path
  end
end
