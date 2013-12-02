class Song
	attr_accessor :name, :genre, :artist
	SONGS = []
	
	def initialize (name)
		@name = name
		@artist = artist
		@genre = []
		SONGS << self
	end	

	def genre=(genre)
    @genre = genre
    genres.songs << self
    genres.artists << artist
 	 end

end

