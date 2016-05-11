class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :detailed_users, :FirstName, :first_name
    rename_column :detailed_users, :LastName, :last_name
    rename_column :detailed_users, :Picture, :picture
    rename_column :detailed_users, :Gender, :gender
    rename_column :detailed_users, :BirthDay, :birth_day
    rename_column :detailed_users, :SexualOrientation, :sexual_orientation
    rename_column :detailed_users, :Description, :description
    rename_column :detailed_users, :PrimaryLanguage, :primary_language
    rename_column :detailed_users, :SecondLanguage, :secondary_language
  end
end
