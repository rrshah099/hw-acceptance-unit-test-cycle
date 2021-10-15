class Movie < ActiveRecord::Base
    def self.same_director(id)
        director = Movie.find(id).director
        if director.nil? || director.empty?
			return
		end
        Movie.where(director:director)
    end

end
