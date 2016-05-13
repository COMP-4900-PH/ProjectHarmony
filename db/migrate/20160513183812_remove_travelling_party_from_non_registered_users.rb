class RemoveTravellingPartyFromNonRegisteredUsers < ActiveRecord::Migration
  def change
    remove_column :non_registered_users, :travellingparty, :string
  end
end
