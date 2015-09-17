class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date

  def self.ratings
  	r = []
  	Movie.all.each do |movie|
  		r << movie.rating
  	end
  	r.uniq
  end 

end
