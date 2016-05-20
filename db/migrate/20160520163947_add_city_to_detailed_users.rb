class AddCityToDetailedUsers < ActiveRecord::Migration
  def change
    add_column :detailed_users, :city, :string
  end
end
