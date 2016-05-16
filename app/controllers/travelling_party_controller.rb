class TravellingPartyController < ApplicationController
  load_and_authorize_resource

  # POST /travelling_party/1
  def create
    # Creates a new travelling party for selected sailing
    travelling_party = TravellingParty.new()
    travelling_party.sailing_id = params[:id]
    travelling_party.save

    # Creates a new party register for selected travelling party
    party_register = PartyRegister.new()
    party_register.travelling_party_id = travelling_party.id
    party_register.user_id = current_user.id

    flash[:notice] = "You have joined the sailing!"
    party_register.save

  end

end
