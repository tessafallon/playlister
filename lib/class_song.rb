class Song
	attr_accessor :genre, :artist, :name
	SONGS = []
	
	def initialize
		@artist = []
		SONGS << self
	end	

	def artist
		artist.songs << self
	end

	def genre=(genre)
    @genre = genre
    #genre.songs << self
 	end
end
