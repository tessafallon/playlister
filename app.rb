require './parser'
require './lib/class_artist'
require './lib/class_genre'
require './lib/class_song'

puts "Browse by artist or genre(pick one)"
answer = gets.chomp

if answer == "artist"
 puts Artist.list
elsif answer == "genre"
	puts Genre.list
else
	puts "Please pick either artist or genre."
end

#artist + songs

