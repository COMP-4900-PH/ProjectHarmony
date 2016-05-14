class AddSailingToTravellingParty < ActiveRecord::Migration
  def change
    add_reference :travelling_parties, :sailing, index: true, foreign_key: true
  end
end
