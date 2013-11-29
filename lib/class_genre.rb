class Genre
	attr_accessor  :songs, :name, :artists
	GENRES = []

	def initialize
		@name = name
		@songs = []
		@artists = []
		GENRES << self
	end

	def name=(name)
		@name = name
	end

	def songs=(songs)
		  @songs = songs
  		p genre.songs
  		end

  		def artists=(artists)
  			@artists
  		end
end





#genre contains multiple songs

