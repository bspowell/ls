class GuessingGame

  def initialize
    reset
  end

  def play
    reset
    @guess_count.downto(1) do |guesses_remain|
      puts "You have #{guesses_remain} remaining"
      @result = check_answer(get_guess)
      @guess_count -= 1
      break if win?
    end
    game_ends
  end

  def win?
    @number == @result
  end

  def get_guess
    loop do 
      puts "Enter a number between 1 and 100:"
      answer = gets.chomp.to_i
      if answer > 100 || answer < 1
        puts "Invalid Guess"
      end 
      return answer
    end
  end

  def check_answer(answer)
    if answer > @number
      puts "Your guess is too high"
    elsif answer < @number
      puts "Your guess is too low"
    else
      puts "That's the number!"
      return answer
    end
  end

  def game_ends
    puts win? ? "You won!" : "You have no more guesses, you lost!"
    reset
  end

  def reset
    @guess_count = 7
    @number = rand(100)
    @result = 0
  end 

end



game = GuessingGame.new
game.play

=begin

You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guess remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!

=end