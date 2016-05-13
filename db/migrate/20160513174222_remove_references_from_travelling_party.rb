class RemoveReferencesFromTravellingParty < ActiveRecord::Migration
  def change
    remove_column :travelling_parties, :references, :string
  end
end
