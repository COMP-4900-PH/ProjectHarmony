class PartyRegister < ActiveRecord::Base
  belongs_to :user
  belongs_to :travelling_party
  has_one :travelling_party
  has_one :user
end
