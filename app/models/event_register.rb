class EventRegister < ActiveRecord::Base
  belongs_to :user
  has_one :user
  belongs_to :event
  has_one :event
  belongs_to :travelling_party
  has_one :travelling_party
end
