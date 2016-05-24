class Sailing < ActiveRecord::Base
  has_many :travelling_parties
  has_many :events

  attr_accessor :people_on_sailing, :top_primary_language, :top_secondary_language, :age_under_18, :age_18_to_50, :age_51_and_over

  # Calculate the amount of days until the ship leaves
  def daysToSailing
    (self.departure_date.to_time.to_i - Date.today.to_time.to_i) / 60 / 60 / 24
  end

  # Return array of primary languages of users on this sailing
  def primary_language
    gather_data.map do |users|
      users.primary_language
    end
  end

  # Return array of secondary languages of users on this sailing
  def secondary_language
    gather_data.map do |users|
      users.secondary_language
    end
  end

  # Set people on sailing to amount of detailed users on sailing
  def people_on_sailing
    @people_on_sailing = gather_data.count
  end

  # Chains through our database relations and finds all users on this sailing
  def gather_data
    self.travelling_parties.flat_map do |party|
      party.party_registers.map do |reg|
        reg.user.detailed_user
      end
    end
  end

  # Counts up all primary languages and sets @top_primary_language to highest
  def count_primary_languages
    primary_language_hash = Hash.new(0)
    self.primary_language.each { |language| primary_language_hash[language] += 1 }
    @top_primary_language = primary_language_hash.max_by{ |k,v| v}
  end

  # Counts up all secondary languages and sets @top_secondary_language to highest
  def count_secondary_languages
    secondary_language_hash = Hash.new(0)
    self.secondary_language.each { |language| secondary_language_hash[language] += 1 }
    @top_secondary_language = secondary_language_hash.max_by{ |k,v| v}
  end

  # Count users ages and organize them into three age groups
  def create_age_groups
    age_under_18 = 0
    age_18_to_50 = 0
    age_51_and_over = 0
    self.gather_data.each do |user|
      if(user.user_age >= 51)
        age_51_and_over += 1
      end
      if(user.user_age >= 18 && user.user_age < 51)
        age_18_to_50 += 1
      end
      if(user.user_age < 18)
        age_under_18 += 1
      end
    end
    @age_under_18 = age_under_18
    @age_18_to_50 = age_18_to_50
    @age_51_and_over = age_51_and_over
  end

end
