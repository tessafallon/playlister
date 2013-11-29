class Song
	attr_accessor :name, :genre, :artist
	def initialize
		@name = name
		@artist = artist
		@genre = []
	end	

	def name=(name)
		@name = name
	end

	def genre=(genre)
    @genre = genre
    genre.songs << self
    genre.artists << artist
 	 end

 	 def artist=(artist)
 	 	@artist = artist
 	 	artist.songs << self
end
end
