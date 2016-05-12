class Event < ActiveRecord::Base
  belongs_to :sailing
  has_many :event_registers
  has_many :users, through: :event_registers
  has_many :travelling_parties, through: :event_registers
  has_attached_file :image, styles: { small: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
