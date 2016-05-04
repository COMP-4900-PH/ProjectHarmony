class CreatePartyRegisters < ActiveRecord::Migration
  def change
    create_table :party_registers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :travelling_party, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
