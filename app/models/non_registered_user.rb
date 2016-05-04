class NonRegisteredUser < ActiveRecord::Base
  has_one :travelling_party
end
