class Genre
	attr_accessor  :songs, :name
	GENRES = []
	
	def initialize
		@name = name
		@songs = []
		GENRES << self
	end

	def songs=(songs)
		@songs ||= [] #conditional: create an array if none exists
  	end
  	
  	def self.all
  		GENRES
  	end

	def self.reset_genres
		GENRES.clear
	end

	def artists
    songs.collect{|s| s.artist}.uniq
  	end
end