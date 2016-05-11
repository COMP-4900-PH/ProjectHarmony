class TravellingParty < ActiveRecord::Base
  has_one :sailing
  has_many :non_registered_user
  has_many :party_registers
  has_many :event_registers
  has_many :events, through: :event_registers
  has_many :users, through: :party_registers
end
