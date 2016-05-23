class DetailedUser < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, styles: { small:"100x100", thumb: "240x270#" }, default_url: "/images/user/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def user_age
    (Date.today.to_time.to_i - self.birth_day.to_i) / 60 / 60 / 24 / 365
  end

end

