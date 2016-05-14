class RemoveSailingFromTravellingParty < ActiveRecord::Migration
  def change
    remove_column :travelling_parties, :sailing, :string
  end
end
