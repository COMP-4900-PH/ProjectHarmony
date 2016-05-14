class TravellingParty < ActiveRecord::Base
  belongs_to :sailing
  has_many :non_registered_user
  has_many :party_registers
  has_many :event_registers
  has_many :events, through: :event_registers
  has_many :users, through: :party_registers
end
