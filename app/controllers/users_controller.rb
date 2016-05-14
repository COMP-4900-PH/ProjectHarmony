class UsersController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    @user = User.find(current_user.id)
    @detailed_user = DetailedUser.find_by_user_id(current_user.id)
    @events = Event.where(creator_id: current_user.id)
    @event_register = EventRegister.where(user_id: current_user.id)
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)
    #@sailings = @t.joins(:sailings).where(TravellingParty.sailing_id == self.sailing.id)
  end

  def profile
    @user = User.find_by_id(params[:id])
    @detailed_user = DetailedUser.find_by_user_id(params[:id])
  end

end


# select * from sailings
# INNER JOIN travelling_parties on sailings.id = travelling_parties.sailing_id
# INNER JOIN party_registers on travelling_parties.id = party_registers.travelling_party_id
# inner JOIN users on party_registers.user_id = users.id
# where users.id = 8