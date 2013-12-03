class Artist
	attr_accessor :name, :songs, :genre
	ARTISTS = []

	def initialize
		@name = name
		ARTISTS << self
	end	

	def add_song
		@songs << song
		song.artist = self #sets value of song.artist from song class to self from artist class
	end
	
  	def songs_count
  		songs.count
  	end
	
	def self.all
		ARTISTS
	end

	def self.reset_artists
		ARTISTS.clear
	end

	def self.count
		ARTISTS.count
	end

	def genres
    	songs.collect{|s| s.genre}.uniq
  end
end