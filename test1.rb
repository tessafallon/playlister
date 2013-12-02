

my_dir = Dir.new("data")

entries = Dir.entries("data").select {|f| !File.directory? f}

##FIX THIS by Monday
artist = [] #artist eo line
songs = [] #title and genre
genres = []

#i = 0
#need refactoring
entries.collect! {|get_artist| get_artist.split(/.mp3/)}
entries.collect! {|parts| parts[0].split(' [')}
entries.each {|parts| songs << parts[0].split(' - ').pop}
entries.each {|parts| genres << parts[1].split(']').pop}
entries.collect! {|parts| parts[0].split(' - ')}
entries.each {|parts| artist << parts[0]}
#entries.collect {|part1, part2| part2[0].split(' - ')}

music_hash = Hash.new
music_hash[:artists] = [:artist, :song, :genre]

i = 0
(0..200).each do |i|
music_hash[:artists][i] = [:artist => artist[i], :song => songs[i], :genre => genres[i]]
end


#create new artist
puts music_hash[:artists]

#create new artist

