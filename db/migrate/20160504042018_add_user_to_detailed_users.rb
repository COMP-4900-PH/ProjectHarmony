class AddUserToDetailedUsers < ActiveRecord::Migration
  def change
    add_reference :detailed_users, :user, index: true, foreign_key: true
  end
end
