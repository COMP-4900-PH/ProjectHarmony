class UsersController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    @user = User.find(current_user.id)
    @detailed_user = DetailedUser.find_by_user_id(current_user.id)
    @events = Event.where(creator_id: current_user.id)
    #@event_register = EventRegister.where(user_id: current_user.id)
    @event_register = Event.joins(:event_registers, :sailing).where("event_registers.user_id" => current_user.id)
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)
    #abort @sailings.inspect
  end

  def profile
    @user = User.find_by_id(params[:id])
    @detailed_user = DetailedUser.find_by_user_id(params[:id])
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => params[:id])
  end

  # use by the hover function in events page
  # where it queries the information of the user asynchronously
  # when you hover on its image
  # returns json
  def popover
    sql = "select event_name, cruise_ship_name from event_registers JOIN events ON event_registers.event_id = events.id JOIN sailings ON events.sailing_id = sailings.id  WHERE user_id = #{params[:id]}"
    records_array = ActiveRecord::Base.connection.execute(sql)
   render json: records_array
  end

end