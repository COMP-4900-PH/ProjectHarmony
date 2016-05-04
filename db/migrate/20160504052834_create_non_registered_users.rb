class CreateNonRegisteredUsers < ActiveRecord::Migration
  def change
    create_table :non_registered_users do |t|
      t.integer :age
      t.string :gender
      t.string :travellingparty
      t.string :references

      t.timestamps null: false
    end
  end
end
