class CreateSailings < ActiveRecord::Migration
  def change
    create_table :sailings do |t|
      t.integer :official_id
      t.string :destination_identifier
      t.string :cruise_ship_name
      t.string :cruise_ship_compay
      t.datetime :departure_date
      t.datetime :return_date
      t.string :port_of_origin
      t.string :port_of_destination

      t.timestamps null: false
    end
  end
end
