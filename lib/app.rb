require './class_genre'
require './class_song'
require './class_artist'
#for part B
#ile_names = Dir.entries("data").select {|f| !File.directory? f}

#puts file_names.map {|string| string.split!(" - ")}

#list artists with songs
artist1 = Artist.new
puts artist1.songs


song = Song.new
song.name = "Work it"
song.artist = Artist.new.tap{|artists| artists.name = "Tessa"}
p song.genre = Genre.new.tap {|genre| genre.name = "rap"}

artist = Artist.new
artist.name = "Bob"
artist.song
p artist.songs