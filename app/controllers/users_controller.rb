class UsersController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    @user = User.find(current_user.id)
    @detailed_user = DetailedUser.find_by_user_id(current_user.id)
    @events = Event.where(creator_id: current_user.id)
    @event_register = EventRegister.where(user_id: current_user.id)
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)
  end

  def profile
    @user = User.find_by_id(params[:id])
    @detailed_user = DetailedUser.find_by_user_id(params[:id])
  end

  def popover

    sql = "select event_name, cruise_ship_name from event_registers JOIN events ON event_registers.event_id = events.id JOIN sailings ON events.sailing_id = sailings.id  WHERE user_id = #{params[:id]}"
    records_array = ActiveRecord::Base.connection.execute(sql)
   render json: records_array
  end

end