class CreateTravellingParties < ActiveRecord::Migration
  def change
    create_table :travelling_parties do |t|
      t.string :sailing
      t.string :references

      t.timestamps null: false
    end
  end
end
