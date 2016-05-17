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

    # This needs to be converted into an active record query
    test = "select * from party_registers INNER JOIN travelling_parties on party_registers.travelling_party_id = travelling_parties.id
      where party_registers.user_id = #{current_user.id}
      AND travelling_parties.sailing_id = #{travelling_party.sailing_id}"
    @records_array = ActiveRecord::Base.connection.execute(test)

    # If this user has not signed up for a sailing on a particular boat already, alow them to join
    if (@records_array.blank?)
      flash[:notice] = "You have joined the sailing!"
      party_register.save
    else
      # A user cannot join a sailing twice
      flash[:alert] = "You cannot join a sailing twice!"
      # remove the travelling_party record that was created ealier (it was needed to create the party_register) and
      # continue the transaction
      travelling_party.destroy
    end

  end

end
