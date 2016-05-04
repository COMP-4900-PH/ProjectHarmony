class Sailing < ActiveRecord::Base
  has_many :travelling_party
  has_many :event
end
