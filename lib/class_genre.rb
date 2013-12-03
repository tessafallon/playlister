class Genre
	attr_accessor  :songs, :name
	GENRES = []
	
	def initialize
		@name = name
		@songs = []
		GENRES << self
	end

	def songs=(songs)
		@songs ||= [] #conditional: create an array if none exists
		@songs = songs
  		#genres.songs
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

  	def self.list
		GENRES.each_with_index do |genre, index| puts "#{genre.name}" end
	end
end
