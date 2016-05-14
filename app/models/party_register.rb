class PartyRegister < ActiveRecord::Base
  belongs_to :user
  belongs_to :travelling_party
end
