class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :event_name
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.text :description
      t.integer :max_participants
      t.references :sailing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
