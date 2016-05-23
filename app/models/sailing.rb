class Sailing < ActiveRecord::Base
  has_many :travelling_parties
  has_many :events

  attr_accessor :people_on_sailing, :array_of_things, :number_of_english_speakers

  # Calculate the amount of days until the ship leaves
  def daysToSailing
    (self.departure_date.to_time.to_i - Date.today.to_time.to_i) / 60 / 60 / 24
  end

  def primary_language
    gather_data.map do |users|
      users.primary_language
    end
  end

  def secondary_language
    gather_data.map do |users|
      users.secondary_language
    end
  end

  def people_on_sailing
    @people_on_sailing = gather_data.count
  end

  def gather_data

    self.travelling_parties.flat_map do |party|
      party.party_registers.map do |reg|
        reg.user.detailed_user
      end
    end
  end

end
