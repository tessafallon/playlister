

class Artist
	attr_accessor :name, :songs, :genres, :genre
	#@@artist_clear this here>?
 #if you declare CONSTANT as an ARRAY, you can still change the conents of the array


	def initialize
		@name = name
		@songs = []
		@genres = []
	end

#genre is add at song level
	

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
	
	end

	#ea time a song is added, the genre should be added to the artist's genre array

#alternate notation: if you declare ARTISTS as a class constant, you can call it 
#like puts Artist::ARTISTS << "billy"

