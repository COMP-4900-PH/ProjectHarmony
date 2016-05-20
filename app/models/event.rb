class Event < ActiveRecord::Base
  belongs_to :sailing
  has_many :comments
  has_many :event_registers
  has_many :users, through: :event_registers
  has_many :travelling_parties, through: :event_registers
  has_attached_file :image, styles: { small: "100x100#", thumb: "240x270#" }, default_url: "/images/event/:style/missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  default_scope { order('created_at DESC') }
end
