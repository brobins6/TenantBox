#Movie Model
class Movie < ActiveRecord::Base
end
  def self.ratings
    pluck(:rating).uniq
  end

  def self.find_all_by_ratings(ratings)
    where(rating: ratings)
  end
