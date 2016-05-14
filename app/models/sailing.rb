class Sailing < ActiveRecord::Base
  has_many :travelling_parties
  has_many :events

  # Calculate the amount of days until the ship leaves
  def daysToSailing
    (self.departure_date.to_time.to_i - Date.today.to_time.to_i) / 60 / 60 / 24
  end
end
