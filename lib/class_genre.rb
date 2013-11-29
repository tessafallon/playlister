class Genre
	attr_accessor  :songs, :name, :artists, :genres
	GENRES = []
	
	def initialize
		@name = name
		@songs = []
		@artists = []
		GENRES << self
	end

	def songs=(songs)
		@songs = songs
  		p genre.songs
  	end

	def genres=(genres)
		GENRES
  	end 
  	
  	def self.all
  		GENRES
  	end

	def self.reset_genres
		GENRES.clear
	end


end

#genre contains multiple songs
