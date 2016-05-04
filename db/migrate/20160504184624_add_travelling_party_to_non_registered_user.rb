class AddTravellingPartyToNonRegisteredUser < ActiveRecord::Migration
  def change
    add_column :non_registered_users, :travellingparty_id, :integer
  end
end
