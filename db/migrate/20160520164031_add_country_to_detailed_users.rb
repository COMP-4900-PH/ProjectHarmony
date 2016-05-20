class AddCountryToDetailedUsers < ActiveRecord::Migration
  def change
    add_column :detailed_users, :country, :string
  end
end
