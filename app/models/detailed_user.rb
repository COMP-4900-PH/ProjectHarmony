class DetailedUser < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { small:"100x100", thumb: "240x270#" }, default_url: "/images/user/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end

