class Song
  attr_reader :title, :artist

  def initialize(title)
    @title = title
  end

  def artist=(name)
    @artist = name
    name.upcase!
  end
end

song = Song.new("Superstition")
p song.artist = "Stevie Wonder"
p song.artist


=begin
#10 — What will the last 2 lines output in this case?


"STEVIE WONDER"
"STEVIE WONDER"

This is because we are mutating the calling object in our artist
setter method. Even though a setter method returns the arguments passed
in, we mutated it through a destructive method call of #upcase! which
mutates its caller.

the value reference by name and @artist is affected as the are both 
pointing to the same object in space.
=end 