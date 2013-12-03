class Song
	attr_accessor :genre, :artist, :name
	SONGS = []
	
	def initialize
		SONGS << self
	end	

	def genre=(genre)
    @genre = genre
    genre.songs = self
 	end
end
