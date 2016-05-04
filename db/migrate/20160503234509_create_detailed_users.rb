class CreateDetailedUsers < ActiveRecord::Migration
  def change
    create_table :detailed_users do |t|
      t.string     :FirstName
      t.string     :LastName
      t.binary     :Picture
      t.string     :Gender
      t.datetime   :BirthDay
      t.string     :SexualOrientation
      t.text       :Description
      t.string     :PrimaryLanguage
      t.string     :SecondLanguage

      t.timestamps null: false
    end
  end
end
