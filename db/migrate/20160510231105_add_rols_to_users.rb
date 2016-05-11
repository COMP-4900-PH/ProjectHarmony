class AddRolsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :detailedUsers, :boolean, :default => false
  end
end
