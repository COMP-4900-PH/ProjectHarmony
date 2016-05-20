class PartyRegisterController < ApplicationController
  load_and_authorize_resource

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    ship = Sailing.joins(:travelling_parties => :party_registers).find_by("party_registers.id" => params[:id]).cruise_ship_name
    @party_register.destroy
    respond_to do |format|
      format.html { redirect_to user_dashboard_path, notice: "You have left #{ship} sailing" }
      format.json { head :no_content }
    end
  end
end
