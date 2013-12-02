class Genres
	attr_accessor  :songs, :name, :artists, :genres
	GENRES = []
	
	def initialize(name)
		@name = name
		@songs = []
		@artists = []
		GENRES << self
	end

	def songs=(songs)
		@songs = songs
  		genres.songs
  	end
  	
  	def self.all
  		GENRES
  	end

	def self.reset_genres
		GENRES.clear
	end


end

