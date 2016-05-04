class TravellingParty < ActiveRecord::Base
  has_one :sailing
  has_many :non_registered_user
  has_one :party_register
  has_one :event_register
end
