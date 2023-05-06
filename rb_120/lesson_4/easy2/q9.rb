class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

=begin
What would happen if we added a play method to the Bingo class, 
keeping in mind that there is already a method of this name in 
the Game class that the Bingo class inherits from.

It would override the Game class's play method. You can test this by
creating a play method in class Bingo and calling it to see which method will
be called.

Ruby doesn't look up the chain. 

=end