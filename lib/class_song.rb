class Song
	attr_accessor :name, :genre, :artist
	
	def initialize
		@name = name
		@artist = artist
		@genre = []
	end	

	def genre=(genre)
    @genre = genre
    genre.songs << self
    genre.artists << artist
 	 end

end
