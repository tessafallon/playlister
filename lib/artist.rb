class Artist
attr_accessor :name, :songs, :genres, :catalog_ID
ARTISTS = []

def initialize(name)
	@name = name
	@catalog_ID = id
	@songs = []
	@genres = []
	ARTISTS << self
end
def add_song (song, genre)
	@songs << song
	@genres << genre
	
end

def catalog_ID (id)
	@catalog_ID
end

end

class Song
	attr_accessor :title, :artists, :genres
attr_reader :catalog_ID

	def initialize(title)
		@title = title
		@catalog_ID = catalog_ID
		@artists = []
		@genres = []
		SONGS << self
	end

end


class Genre
attr_accessor :name, :songs, :artists
attr_reader :catalog_ID

	def initialize(name)
		@name = name
		@catalog_ID
		@songs = []
		@artists = []
		GENRES << self
	end
end