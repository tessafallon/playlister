require './parser'
require './lib/class_artist'
require './lib/class_genre'
require './lib/class_song'

entries = Dir.entries("data").select {|f| !File.directory? f}

artist = []
songs = []
genre = []

#need refactoring
entries.collect! {|get_artist| get_artist.split(/.mp3/)}
entries.collect! {|parts| parts[0].split(' [')}
entries.each {|parts| songs << parts[0].split(' - ').pop}
entries.each {|parts| genre << parts[1].split(']').pop}
entries.collect! {|parts| parts[0].split(' - ')}
entries.each {|parts| artist << parts[0]}


music = Hash.new
music[:catalog] = []

i = 0
(0..100).each do |i|
music[:catalog][i] = {:artist => artist[i], :song => songs[i], :genre => genre[i]}
end


music[:catalog].each_with_index do |item, i|
Artist.new.name = item[:artist]
Song.new.name = item[:song]
Genre.new.name = item[:genre]
end

puts Genre::GENRES.uniq.inspect #doesn't work properly

puts Genre.name #doesn't work properly



# variable i to increment artist name and catalog index no #look into eval
#  puts i = Artist.new
# puts i.name = music[:catalog][i][:artist]
# i.songs = music[:catalog][i][:song]
# end


# end
#music[:catalog].each do |key, value|key
#	key.each_pair do |keys, values| puts values
#	end
#end