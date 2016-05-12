class AddAttachmentAvatarToDetailedUsers < ActiveRecord::Migration
  def self.up
    change_table :detailed_users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :detailed_users, :avatar
  end
end
