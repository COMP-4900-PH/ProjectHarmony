class Event < ActiveRecord::Base
  belongs_to :sailing
  has_one :event_register
end
