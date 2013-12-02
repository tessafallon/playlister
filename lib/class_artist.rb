class Artist
	attr_accessor :name, :songs, :genres, :genre
	ARTISTS = []

	def initialize(name)
		@name = name
		@songs = []
		@genre = []
		ARTISTS << self
	end	

	def add_song (song)
		@songs << song
		@genres << song.genre
		genre.artists << self
	end
	
  	def songs_count
  		songs.count
  	end
	
	def self.all
		ARTISTS
	end

	def self.reset_artists
		ARTISTS.clear
	end

	def self.count
		ARTISTS.count
	end
end
