class AddTravellingPartyToNonRegisteredUsers < ActiveRecord::Migration
  def change
    add_reference :non_registered_users, :traveling_party, index: true, foreign_key: true
  end
end
