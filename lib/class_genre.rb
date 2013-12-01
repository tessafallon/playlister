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
  		genre.songs
  	end
  	
  	def self.all
  		GENRES
  	end

	def self.reset_genres
		GENRES.clear
	end


end

#genre contains multiple songs
