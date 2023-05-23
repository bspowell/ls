
class Song
  attr_reader :title, :artist

  def initialize(title)
    @title = title
    @artist
  end

  def artist=(name)
    @artist = name.upcase
  end
end

p song = Song.new("Superstition")
p song.artist = "Stevie Wonder"
p song.artist
p song

=begin

What will the last three lines of code print to the console? 
After song.artist is called, what would be returned if we 
inspect the song object?

This will output:
The class of the object, it's hex id, and any instance variables that
were initialized during it's instantiation which is @title and it's value.
<@Song:hexid @title="Superstition">
"Stevie Wonder" - this is because setter methods return the arguments that were
passed. However changing line 10 to a mutating method .upcase! would return
"STEVIE WONDER"
"STEVIE WONDER"

If we inspected the song object we would get the class, hex id, title
and artist as STEVIE WONDER. 

=end