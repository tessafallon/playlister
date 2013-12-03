class Artist
	attr_accessor :name, :songs, :genre
	ARTISTS = []

	def initialize
		@name = name
		@songs = []
		ARTISTS << self
	end	

	def add_song (song)
		@songs << song
		#song.artist = self #sets value of song.artist from song class to self from artist class
	end
	
  	def songs_count
  		self.songs.size
  	end
	
	def self.all
		ARTISTS
	end

	def self.list
		ARTISTS.each_with_index do |artist, index| puts " #{index} #{artist.name} #{artist.songs_count}" end
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

  	def list_songs
  		self.songs.each_with_index do |song, index| puts "#{index+1}.#{song.name}" end
  		end
end
