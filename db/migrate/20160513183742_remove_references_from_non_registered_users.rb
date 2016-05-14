class RemoveReferencesFromNonRegisteredUsers < ActiveRecord::Migration
  def change
    remove_column :non_registered_users, :references, :string
  end
end
