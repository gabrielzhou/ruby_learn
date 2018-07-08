class Song
 def initialize(name, artist, duration)
  @name = name
  @artist = artist
  @duration = duration
 end
end

song = Song.new("bicyclops“， ”Fleck", 260)
song.inspect
