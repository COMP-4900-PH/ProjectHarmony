class Event < ActiveRecord::Base
  belongs_to :sailing
  has_many :event_registers
  has_many :users, through: :event_registers
  has_many :travelling_parties, through: :event_registers
end
