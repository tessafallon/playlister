require './data'
#require './lib/artist'

#create a new artist instance


entries = Dir.entries("data").select {|f| !File.directory? f}




def parse_files(entries)
artist = /((.*) (?=\-))/
song = /(?<=\-\s).*(?=\s\[)/
genre = /(?<=\[).*(?=\])/
	catalog = []
entries.each do |item| 
	song_array = []
	m = item.match(artist).to_s
	z = item.match(song).to_s
	x = item.match(genre).to_s
	song_array << m << z << x
	catalog << song_array
end
catalog
end

puts parse_files(entries).inspect

#catalog contains arrays with three elements (a, s, g)

