require './lib/class_artist'
require './lib/class_song'
require './lib/class_genre'

my_dir = Dir.new("data")

entries = Dir.entries("data").select {|f| !File.directory? f}

first_split = [] #artist eo line
second_split = [] #title and genre
genres = []
entries.each {|parts| first_split << parts.split(" - ")}  #REFACTOR gross
first_split.each {|genre| second_split << genre[1].split(' [')}
second_split.each {|genre| genre[1].slice!('].mp3')}
first_split.each {|junk| junk.delete_at(1)}
second_split.each {|stuff| genres << stuff.pop}

music_hash = Hash.new

puts music_hash[:artists] = [:artist, :song, :genre] #add values inrecemeting by index number

i = 0
            (0..100).each do |i|
              music_hash[:artists][i] = [:artist => first_split[i], :song => second_split[i], :genre => genres[i]]
            end


puts music_hash.inspect


#if array index is the same, put to new array