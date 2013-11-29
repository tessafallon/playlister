

class Artist
	attr_accessor :name, :songs, :genres, :genre
	ARTISTS = []

	def initialize
		@name = name
		@songs = []
		@genres = []
		ARTISTS << self
	end	

	def add_song (song)
		@songs << song
		@genres << song.genre
	end

	def genre=(genre)
		@genre = genre
		genre.artists << self
	end
	
	def songs=(songs)
		  @songs = songs
  		end

  	def songs_count
  		songs.count
  	end
	
	def self.all
		p ARTISTS
	end

	def self.reset_artists
		ARTISTS.clear
	end

	def self.count
		p ARTISTS.count
	end
end