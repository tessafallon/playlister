class Genre
	attr_accessor  :songs, :name
	GENRES = []
	
	def initialize
		@name = name
		@songs = []
		GENRES << self
	end

	def songs=(songs)
<<<<<<< HEAD
		@songs ||= [] #conditional: create an array if none exists
=======
		@songs = songs
  		genres.songs
>>>>>>> 90274f32c0aece72f1e854cc9c228603f1bdd587
  	end
  	
  	def self.all
  		GENRES
  	end

	def self.reset_genres
		GENRES.clear
	end

	def artists
    songs.collect{|s| s.artist}.uniq
  	end
end
